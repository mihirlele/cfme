module ManageIQ::Providers::Google
  class CloudManager::Refresher < ManageIQ::Providers::BaseManager::ManagerRefresher
    def parse_legacy_inventory(ems)
      ManageIQ::Providers::Google::CloudManager::RefreshParser.ems_inv_to_hashes(ems, refresher_options)
    end

    def save_inventory(ems, _targets, hashes)
      super
      EmsRefresh.queue_refresh(ems.network_manager)
    end

    def post_process_refresh_classes
      [::Vm]
    end
  end
end
