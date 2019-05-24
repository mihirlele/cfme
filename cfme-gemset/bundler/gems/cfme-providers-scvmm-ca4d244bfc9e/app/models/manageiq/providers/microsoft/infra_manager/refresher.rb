module ManageIQ::Providers::Microsoft
  class InfraManager::Refresher < ManageIQ::Providers::BaseManager::Refresher
    def parse_legacy_inventory(ems)
      ManageIQ::Providers::Microsoft::InfraManager::RefreshParser.ems_inv_to_hashes(ems, refresher_options)
    end

    def post_process_refresh_classes
      # TODO: previously this only looped over VM classes, but, since SCVMM is
      # infra, it should probably include Host, too
      [::VmOrTemplate, ::Host]
    end
  end
end
