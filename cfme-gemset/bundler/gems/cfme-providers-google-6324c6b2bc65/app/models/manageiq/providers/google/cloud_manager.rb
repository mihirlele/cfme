class ManageIQ::Providers::Google::CloudManager < ManageIQ::Providers::CloudManager
  require_nested :AvailabilityZone
  require_nested :EventCatcher
  require_nested :EventParser
  require_nested :Flavor
  require_nested :Provision
  require_nested :ProvisionWorkflow
  require_nested :MetricsCapture
  require_nested :MetricsCollectorWorker
  require_nested :RefreshParser
  require_nested :RefreshWorker
  require_nested :Refresher
  require_nested :Template
  require_nested :Vm

  include ManageIQ::Providers::Google::ManagerMixin

  supports :provisioning

  before_create :ensure_managers
  before_update :ensure_managers_zone

  def ensure_network_manager
    build_network_manager(:type => 'ManageIQ::Providers::Google::NetworkManager') unless network_manager
  end

  def ensure_managers
    ensure_network_manager
    network_manager.name = "#{name} Network Manager" if network_manager
    ensure_managers_zone
  end

  def ensure_managers_zone
    network_manager.zone_id = zone_id if network_manager
  end

  def self.ems_type
    @ems_type ||= "gce".freeze
  end

  def self.description
    @description ||= "Google Compute Engine".freeze
  end

  def self.hostname_required?
    false
  end

  def self.region_required?
    false
  end

  def supported_auth_types
    %w(auth_key)
  end

  def supported_catalog_types
    %w(google)
  end

  # TODO(lwander) determine if user wants to use OAUTH or a service account
  def missing_credentials?(_type = {})
    false
  end

  def supports_authentication?(authtype)
    supported_auth_types.include?(authtype.to_s)
  end

  # Operations

  def vm_start(vm, _options = {})
    vm.start
  rescue => err
    _log.error "vm=[#{vm.name}], error: #{err}"
  end

  def vm_stop(vm, _options = {})
    vm.stop
  rescue => err
    _log.error "vm=[#{vm.name}], error: #{err}"
  end

  def vm_destroy(vm, _options = {})
    vm.vm_destroy
  rescue => err
    _log.error "vm=[#{vm.name}], error: #{err}"
  end

  def vm_reboot_guest(vm, _options = {})
    vm.reboot_guest
  rescue => err
    _log.error "vm=[#{vm.name}], error: #{err}"
  end
end
