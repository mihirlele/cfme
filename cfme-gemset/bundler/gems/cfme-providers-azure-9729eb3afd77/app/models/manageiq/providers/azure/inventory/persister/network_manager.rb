class ManageIQ::Providers::Azure::Inventory::Persister::NetworkManager < ManageIQ::Providers::Azure::Inventory::Persister
  include ManageIQ::Providers::Azure::Inventory::Persister::Definitions::CloudCollections
  include ManageIQ::Providers::Azure::Inventory::Persister::Definitions::NetworkCollections

  def initialize_inventory_collections
    initialize_network_inventory_collections

    initialize_cloud_inventory_collections
  end

  def initialize_cloud_inventory_collections
    # TODO: Shared with amazon
    %i(vms
       availability_zones).each do |name|

      add_collection(cloud, name) do |builder|
        builder.add_properties(
          :parent   => manager.parent_manager,
          :strategy => :local_db_cache_all
        )
      end
    end
  end
end
