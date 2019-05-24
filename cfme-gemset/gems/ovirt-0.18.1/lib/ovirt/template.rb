module Ovirt
  class Template < Base
    self.top_level_strings    = [:name, :description, :type]
    self.top_level_booleans   = [:stateless]
    self.top_level_integers   = [:memory]
    self.top_level_timestamps = [:creation_time]
    self.top_level_objects    = [:cluster]

    def self.parse_node_extended(node, hash)
      parse_first_node(node, :status, hash, :node => [:state])

      parse_first_node(node, :display, hash,
                       :node      => [:type, :address],
                       :node_to_i => [:port, :monitors, :secure_port])

      parse_first_node(node, :usb, hash,
                       :node_to_bool => [:enabled])

      parse_first_node_with_hash(node, 'cpu/topology', hash.store_path(:cpu, :topology, {}),
                                 :attribute_to_i => [:sockets, :cores])

      parse_first_node(node, :high_availability, hash,
                       :node_to_bool => [:enabled],
                       :node_to_i    => [:priority])

      parse_first_node(node, :os, hash,
                       :attribute => [:type],
                       :node      => [:kernel, :initrd, :cmdline])

      boot_order = []
      hash.store_path(:os, :boot_order, boot_order)

      # Collect boot order
      node.xpath('os/boot').each do |boot|
        dev = boot['dev']
        boot_order << {:dev => dev} unless dev.blank?
      end

      hash[:custom_attributes] = []
      node.xpath('custom_properties/custom_property').each do |ca|
        hash[:custom_attributes] << {:name => ca[:name], :value => ca[:value]}
      end
    end

    def os_type
      attributes.fetch_path(:os, :type) || 'unassigned'
    end

    def boot_order
      attributes.fetch_path(:os, :boot_order) || []
    end

    def getCfg(_snap = nil)
      # TODO: Remove the following MiqException and any others
      raise MiqException::MiqVimError, "Failed to retrieve configuration information for VM" if attributes.nil?

      cfg_hash = {}
      cfg_hash['displayname'] = attributes[:name]
      cfg_hash['guestos']     = attributes.fetch_path(:os, :type)
      cfg_hash['memsize']     = attributes[:memory] / 1_048_576  # in MB
      cfg_hash['numvcpu']     = attributes.fetch_path(:cpu, :sockets)

      # Collect disk information
      attributes[:disks] = send(:disks, :disk) if self[:disks].nil?
      disks.each_with_index do |disk, idx|
        storage_domain = disk[:storage_domains].first
        storage_id     = storage_domain && storage_domain[:id]
        disk_key       = disk[:image_id].blank? ? :id : :image_id
        file_path      = storage_id && ::File.join('/dev', storage_id, disk[disk_key])

        tag = "scsi0:#{idx}"
        cfg_hash["#{tag}.present"]    = "true"
        cfg_hash["#{tag}.devicetype"] = "disk"
        cfg_hash["#{tag}.filename"]   = file_path.to_s
        cfg_hash["#{tag}.format"]     = disk[:format]
      end
      cfg_hash
    end

    REQUIRED_CLONE_PARAMETERS     = [:name, :cluster]
    CLONE_ATTRIBUTES_WITH_SCALARS = [:memory, :stateless, :type]
    CLONE_ATTRIBUTES_WITH_HASHES  = [:display, :usb, :cpu, :high_availability]
    ALLOWED_CLONE_TYPES           = [:full, :linked, :skeletal]

    def create_vm(options = {})
      options = options.dup
      determine_clone_type(options)
      options[:storage] = Base.object_to_id(options[:storage]) if options[:storage]

      case options[:clone_type]
      when :full     then clone_to_vm(options)
      when :linked   then clone_to_vm(options)
      when :skeletal then clone_to_vm_via_blank_template(options)
      end
    end

    private

    def determine_clone_type(options)
      # Return the clone_type from the options if it matches one of the types in the allowed array
      #  otherwise return the first type from the allowed array as a default
      options[:clone_type] = ALLOWED_CLONE_TYPES.include?(options[:clone_type]) ? options[:clone_type] : ALLOWED_CLONE_TYPES.first
    end

    def clone_to_vm_via_blank_template(options)
      # Create a VM based the VM on the blank template using parameters from this template
      # Disks are created from scratch, not copied
      (CLONE_ATTRIBUTES_WITH_SCALARS + CLONE_ATTRIBUTES_WITH_HASHES).each do |key|
        options[key] ||= self[key]
      end
      options[:os] = self[:os].dup
      options[:os][:type] = options[:os_type] || os_type

      skeleton_options = options.dup
      skeleton_options[:clone_type] = :linked
      vm = @service.blank_template.create_vm(skeleton_options)

      create_new_disks_from_template(vm, options)
      vm
    end

    def create_new_disks_from_template(vm, options)
      disks.each do |disk_object|
        disk_options            = disk_object.attributes_for_new_disk
        disk_options[:sparse]   = options[:sparse]  unless options[:sparse].nil?
        disk_options[:storage]  = options[:storage] unless options[:storage].blank?
        vm.create_disk(disk_options)
      end
    end

    def clone_to_vm(options)
      # Create a VM based on this template
      REQUIRED_CLONE_PARAMETERS.each do |key|
        raise ArgumentError, "#{key.inspect} cannot be blank" if options[key].blank?
      end

      response = @service.resource_post(:vms, build_clone_xml(options))
      Vm.create_from_xml(@service, response)
    rescue Ovirt::Error => err
      raise VmAlreadyExists, err.message if err.message.include?("VM with the same name already exists")
      raise
    end

    def build_clone_xml(options)
      builder = Nokogiri::XML::Builder.new do |xml|
        xml.vm do
          xml.name options[:name]
          xml.cluster(:id => Base.object_to_id(options[:cluster]))
          xml.template(:id => self[:id])

          CLONE_ATTRIBUTES_WITH_SCALARS.each do |key|
            xml.send("#{key}_", options[key] || self[key])
          end

          CLONE_ATTRIBUTES_WITH_HASHES.each do |key|
            xml.send("#{key}_") do
              hash = options[key] || self[key]
              hash.each { |k, v| xml.send("#{k}_", v) } unless hash.nil?
            end
          end

          options_os_type = options.fetch_path(:os, :type) || options[:os_type]
          xml.os(:type => options_os_type || os_type) do
            options_boot_order = options.fetch_path(:os, :boot_order)
            (options_boot_order || boot_order).each do |boot|
              xml.boot(:dev => boot[:dev])
            end
          end

          if options[:clone_type] == :full
            xml.disks do
              xml.clone_ true
              disks.each do |disk_object|
                xml.disk(:id => disk_object.attributes[:id]) do
                  xml.sparse options[:sparse] unless options[:sparse].nil?
                  xml.storage_domains { xml.storage_domain(:id => options[:storage]) } if options[:storage]
                end
              end
            end
          end
        end
      end

      builder.doc.root.to_xml
    end
  end
end
