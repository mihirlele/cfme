class ManageIQ::Providers::Microsoft::Inventory::Collector::InfraManager < ManageIQ::Providers::Microsoft::Inventory::Collector
  def initialize(manager, target)
    super
    @inventory = {}
  end

  def collect!
    $scvmm_log.info("#{log_header} Collecting inventory...")
    @inventory = manager.class.execute_powershell_json(connection, inventory_script)
    $scvmm_log.info("#{log_header} Collecting inventory...Complete")
  end

  def inventory
    @inventory ||= collect!
  end

  def ems
    inventory["ems"] || {}
  end

  def volumes
    @volumes ||= begin
      hosts.collect { |host| host["DiskVolumes"] }.flatten
           .reject { |volume| volume["VolumeLabel"] == "System Reserved" }
    end
  end

  def fileshares
    @fileshares ||= begin
      hosts.collect { |host| host["RegisteredStorageFileShares"] }.flatten
    end
  end

  def hosts
    @hosts ||= begin
      inventory["hosts"] ||= []

      switches_by_host_name = vnets.group_by { |switch| switch["VMHostName"] }
      vm_networks_by_logical_network_id = vmnetworks.group_by { |net| net["LogicalNetwork"]["ID"] }

      inventory["hosts"].each do |host|
        host["VirtualSwitch"] = switches_by_host_name[host["Name"]] || []
        host["VirtualSwitch"].each do |switch|
          switch["LogicalNetworks"].to_a.each do |net|
            net["VMNetworks"] = vm_networks_by_logical_network_id[net["ID"]] || []
          end
        end
      end

      inventory["hosts"]
    end
  end

  def clusters
    inventory["clusters"] || []
  end

  def vms
    inventory["vms"] || []
  end

  def images
    inventory["images"] || []
  end

  def vnets
    inventory["vnets"] || []
  end

  def vmnetworks
    inventory["vmnetworks"] || []
  end

  private

  def connection
    @connection ||= manager.connect
  end

  def inventory_script
    @inventory_script ||= File.read(inventory_script_path)
  end

  def inventory_script_path
    @inventory_script_path ||= begin
      File.join(File.dirname(__FILE__), "..", "..", "infra_manager", "ps_scripts", "get_inventory.ps1")
    end
  end
end
