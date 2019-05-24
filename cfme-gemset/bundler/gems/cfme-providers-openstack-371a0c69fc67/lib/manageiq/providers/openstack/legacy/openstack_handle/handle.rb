require 'active_support/inflector'
require 'util/miq-exception'

module OpenstackHandle
  class Handle
    attr_accessor :username, :password, :address, :port, :api_version, :security_protocol, :connection_options
    attr_reader :project_name
    attr_writer   :default_tenant_name

    SERVICE_FALL_BACK = {
      "Network"  => "Compute",
      "Image"    => "Compute",
      "Volume"   => "Compute",
      "Storage"  => nil,
      "Metering" => nil,
      "Metric"   => nil,
      "Event"    => nil,
    }

    SERVICE_NAME_MAP = {
      "Compute"       => :nova,
      "Network"       => :neutron,
      "NFV"           => :nfv,
      "Image"         => :glance,
      "Volume"        => :cinder,
      "Storage"       => :swift,
      "Metering"      => :ceilometer,
      "Baremetal"     => :baremetal,
      "Orchestration" => :orchestration,
      "Planning"      => :planning,
      "Introspection" => :introspection,
      "Workflow"      => :workflow,
      "Metric"        => :metric,
      "Event"         => :event,
    }

    def self.try_connection(security_protocol, ssl_options = {})
      if security_protocol.blank? || security_protocol == 'ssl'
        # For backwards compatibility take blank security_protocol as SSL
        yield "https", {:ssl_verify_peer => false}
      elsif security_protocol == 'ssl-with-validation'
        excon_ssl_options = {:ssl_verify_peer => true}.merge(ssl_options)
        yield "https", excon_ssl_options
      else
        yield "http", {}
      end
    end

    def self.raw_connect_try_ssl(username, password, address, port, service = "Compute", options = nil, api_version = nil,
                                 security_protocol = nil)
      opts = options.dup
      ssl_options = opts.delete(:ssl_options) || {}
      try_connection(security_protocol, ssl_options) do |scheme, connection_options|
        auth_url = auth_url(address, port, scheme, api_version)
        opts[:connection_options] = (opts[:connection_options] || {}).merge(connection_options)
        raw_connect(username, password, auth_url, service, opts)
      end
    end

    def self.raw_connect(username, password, auth_url, service = "Compute", extra_opts = nil)
      opts = {
        :provider                => 'OpenStack',
        :openstack_auth_url      => auth_url,
        :openstack_username      => username,
        :openstack_api_key       => password,
        :openstack_endpoint_type => 'publicURL',
      }
      opts.merge!(extra_opts) if extra_opts

      opts[:openstack_service_type] = ["nfv-orchestration"] if service == "NFV"
      opts[:openstack_service_type] = ["workflowv2"] if service == "Workflow"

      if service == "Planning"
        # Special behaviour for Planning service Tuskar, since it is OpenStack specific service, there is no
        # Fog::Planning module, only Fog::OpenStack::Planning
        Fog::Openstack.const_get(service).new(opts)
      elsif service == "Workflow"
        Fog::Workflow::OpenStack.new(opts)
      elsif service == "Metric"
        Fog::Metric::OpenStack.new(opts)
      elsif service == "Event"
        Fog::Event::OpenStack.new(opts)
      else
        Fog.const_get(service).new(opts)
      end
    rescue Fog::Errors::NotFound => err
      $fog_log.warn("MIQ(#{self.class.name}##{__method__}) "\
                    "Service #{service} not available for openstack provider #{auth_url}")
      $fog_log.warn(err.message)
      raise MiqException::ServiceNotAvailable if err.message.include?("Could not find service")
      raise
    end

    def self.path_for_api_version(api_version)
      case api_version
      when 'v2'
        '/v2.0/tokens'
      when 'v3'
        '/v3/auth/tokens'
      end
    end

    def self.auth_url(address, port = 5000, scheme = "http", api_version = 'v2')
      url(address, port, scheme, path_for_api_version(api_version))
    end

    def self.url(address, port = 5000, scheme = "http", path = "")
      URI::Generic.build(:scheme => scheme, :host => address, :port => port.to_i, :path => path).to_s
    end

    class << self
      attr_writer :connection_options
    end

    class << self
      attr_reader :connection_options
    end

    def initialize(username, password, address, port = nil, api_version = nil, security_protocol = nil,
                   extra_options = {})
      @username          = username
      @password          = password
      @address           = address
      @port              = port || 5000
      @api_version       = api_version || 'v2'
      @security_protocol = security_protocol || 'ssl'
      @extra_options     = extra_options
      @thread_limit      = Settings.ems_refresh.openstack.parallel_thread_limit || 0

      @connection_cache   = {}
      @connection_options = self.class.connection_options
    end

    def thread_limit
      Rails.env.test? ? 0 : @thread_limit
    end

    def ssl_options
      @ssl_options ||= {}
      return @ssl_options unless @ssl_options.blank?

      @ssl_options[:ssl_ca_file]    = @extra_options[:ssl_ca_file] unless @extra_options[:ssl_ca_file].blank?
      @ssl_options[:ssl_ca_path]    = @extra_options[:ssl_ca_path] unless @extra_options[:ssl_ca_path].blank?
      # ssl_cert_store is dependent on the presence of ssl_ca_file
      @ssl_options[:ssl_cert_store] = @extra_options[:ssl_cert_store] unless @extra_options[:ssl_ca_file].blank?
      @ssl_options
    end

    def excon_options
      @excon_options ||= {}
      return @excon_options unless @excon_options.blank?

      @excon_options[:omit_default_port] = @extra_options[:omit_default_port] unless
                                           @extra_options[:omit_default_port].blank?
      @excon_options[:read_timeout]      = @extra_options[:read_timeout] unless @extra_options[:read_timeout].blank?
      @excon_options
    end

    def domain_id
      @extra_options[:domain_id]
    end

    def region
      @extra_options[:region]
    end

    def browser_url
      "http://#{address}/dashboard"
    end

    def connect(options = {})
      opts     = options.dup
      service  = (opts.delete(:service) || "Compute").to_s.camelize
      tenant   = opts.delete(:tenant_name)
      discover_tenants = opts.fetch(:discover_tenants, true)
      opts.delete(:discover_tenants)
      domain   = domain_id

      # Do not send auth_type to fog, it throws warning
      opts.delete(:auth_type)

      if discover_tenants && tenant.blank?
        tenant = default_tenant_name
      end
      opts[:openstack_tenant] = tenant if tenant
      # For identity ,there is only domain scope, with project_name nil
      opts[:openstack_project_name] = @project_name = tenant if tenant
      opts[:openstack_project_domain_id] = domain
      opts[:openstack_user_domain_id]    = domain
      opts[:openstack_region]            = region

      svc_cache = (@connection_cache[service] ||= {})
      svc_cache[tenant] ||= begin
        opts[:connection_options] = (connection_options || {}).merge(excon_options)
        opts[:ssl_options]        = ssl_options

        raw_service = self.class.raw_connect_try_ssl(username, password, address, port, service, opts, api_version,
                                                     security_protocol)

        # need to check if this is versionless keystone endpoint
        if service == "Identity"
          identity_prefix = (api_version == "v2" ? "v2.0" : "v3")
          unless raw_service.credentials[:openstack_management_url].include?(identity_prefix)
            opts[:openstack_identity_prefix] = identity_prefix
            raw_service = self.class.raw_connect_try_ssl(username, password, address, port, service, opts, api_version,
                                                         security_protocol)
          end
        end

        service_wrapper_name = "#{service}Delegate"
        # Allow openstack to define new services without explicitly requiring a
        # service wrapper.
        if OpenstackHandle.const_defined?(service_wrapper_name)
          OpenstackHandle.const_get(service_wrapper_name).new(raw_service, self, SERVICE_NAME_MAP[service])
        else
          raw_service
        end
      end
    end

    def baremetal_service(tenant_name = nil)
      connect(:service => "Baremetal", :tenant_name => tenant_name)
    end

    def detect_baremetal_service(tenant_name = nil)
      detect_service("Baremetal", tenant_name)
    end

    def orchestration_service(tenant_name = nil)
      connect(:service => "Orchestration", :tenant_name => tenant_name)
    end

    def detect_orchestration_service(tenant_name = nil)
      detect_service("Orchestration", tenant_name)
    end

    def planning_service(tenant_name = nil)
      connect(:service => "Planning", :tenant_name => tenant_name)
    end

    def detect_planning_service(tenant_name = nil)
      detect_service("Planning", tenant_name)
    end

    def compute_service(tenant_name = nil)
      connect(:service => "Compute", :tenant_name => tenant_name)
    end
    alias_method :connect_compute, :compute_service

    def identity_service(discover_tenants = true)
      connect(:service => "Identity", :discover_tenants => discover_tenants)
    end
    alias_method :connect_identity, :identity_service

    def network_service(tenant_name = nil)
      connect(:service => "Network", :tenant_name => tenant_name)
    end
    alias_method :connect_network, :network_service

    def detect_network_service(tenant_name = nil)
      detect_service("Network", tenant_name)
    end

    def nfv_service(tenant_name = nil)
      connect(:service => "NFV", :tenant_name => tenant_name)
    end
    alias_method :connect_nfv, :nfv_service

    def detect_nfv_service(tenant_name = nil)
      detect_service("NFV", tenant_name)
    end

    def image_service(tenant_name = nil)
      connect(:service => "Image", :tenant_name => tenant_name)
    end
    alias_method :connect_image, :image_service

    def detect_image_service(tenant_name = nil)
      detect_service("Image", tenant_name)
    end

    def volume_service(tenant_name = nil)
      connect(:service => "Volume", :tenant_name => tenant_name)
    end
    alias_method :connect_volume, :volume_service
    alias_method :cinder_service, :volume_service

    def detect_volume_service(tenant_name = nil)
      detect_service("Volume", tenant_name)
    end

    def storage_service(tenant_name = nil)
      connect(:service => "Storage", :tenant_name => tenant_name)
    end
    alias_method :connect_storage, :storage_service
    alias_method :swift_service,   :storage_service

    def detect_storage_service(tenant_name = nil)
      detect_service("Storage", tenant_name)
    end

    def metering_service(tenant_name = nil)
      connect(:service => "Metering", :tenant_name => tenant_name)
    end
    alias_method :connect_metering, :metering_service

    def detect_metering_service(tenant_name = nil)
      detect_service("Metering", tenant_name)
    end

    def introspection_service(tenant_name = nil)
      connect(:service => "Introspection", :tenant_name => tenant_name)
    end
    alias_method :connect_introspection, :introspection_service

    def detect_introspection_service(tenant_name = nil)
      detect_service("Introspection", tenant_name)
    end

    def workflow_service(tenant_name = nil)
      connect(:service => "Workflow", :tenant_name => tenant_name)
    end
    alias_method :connect_workflow, :workflow_service

    def metric_service(tenant_name = nil)
      connect(:service => "Metric", :tenant_name => tenant_name)
    end
    alias_method :connect_metric, :metric_service

    def event_service(tenant_name = nil)
      connect(:service => "Event", :tenant_name => tenant_name)
    end
    alias_method :connect_event, :event_service

    def detect_metric_service(tenant_name = nil)
      detect_service("Metric", tenant_name)
    end

    def detect_event_service(tenant_name = nil)
      detect_service("Event", tenant_name)
    end

    def detect_workflow_service(tenant_name = nil)
      detect_service("Workflow", tenant_name)
    end

    def detect_service(service, tenant_name = nil)
      connect(:service => service, :tenant_name => tenant_name)
    rescue MiqException::ServiceNotAvailable
      unless (fbs = SERVICE_FALL_BACK[service])
        return nil
      end
      svc = connect(:service => fbs, :tenant_name => tenant_name)
    end

    def tenants
      @tenants ||= identity_service(false).visible_tenants
    end

    def tenant_names
      @tenant_names ||= tenants.collect(&:name)
    end

    def tenant_accessible?(name)
      begin
        compute_service(name)
        true
      rescue Excon::Errors::Unauthorized
        false
      end
    end

    def default_tenant_name
      return @default_tenant_name ||= "admin" if tenant_accessible?("admin")
      tenant_names.each do |name|
        next if name == "services"
        return @default_tenant_name ||= name if tenant_accessible?(name)
      end
    end

    def service_for_each_accessible_tenant(service_name)
      services = []
      all_tenants = tenants
      all_tenants.delete("services")
      Parallel.each(all_tenants, :in_threads => thread_limit) do |tenant|
        service = detect_service(service_name, tenant.name)
        if service
          services << [service, tenant]
        else
          $fog_log.warn("MIQ(#{self.class.name}##{__method__}) "\
                        "Could not access service #{service_name} for tenant #{tenant.name} on OpenStack #{@address}")
        end
      end
      services
    end

    def accessor_for_accessible_tenants(service, accessor, unique_id, array_accessor = true)
      results = []
      not_found_error = Fog.const_get(service)::OpenStack::NotFound
      Parallel.each(service_for_each_accessible_tenant(service), :in_threads => thread_limit) do |svc, project|

        response = begin
          if accessor.kind_of?(Proc)
            accessor.call(svc)
          else
            array_accessor ? svc.send(accessor).to_a : svc.send(accessor)
          end
        rescue not_found_error, Excon::Errors::NotFound => e
          $fog_log.warn("MIQ(#{self.class.name}.#{__method__}) HTTP 404 Error during OpenStack request. " \
                        "Skipping inventory item #{service} #{accessor}\n#{e}")
          nil
        end

        if !response.nil? && array_accessor && response.last.kind_of?(Fog::Model)
          response.map { |item| item.project = project }
        end

        if response
          array_accessor ? results.concat(response) : results << response
        end
      end

      if unique_id.blank? && array_accessor && !results.nil?
        last_object = results.last
        unique_id = last_object.identity_name if last_object.kind_of?(Fog::Model)
      end

      if unique_id
        results.uniq! { |item| item.kind_of?(Hash) ? item[unique_id] : item.send(unique_id) }
      end
      results
    end
  end
end
