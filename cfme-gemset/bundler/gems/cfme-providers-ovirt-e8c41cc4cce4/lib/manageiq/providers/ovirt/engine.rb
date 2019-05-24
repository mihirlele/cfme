module ManageIQ
  module Providers
    module Ovirt
      class Engine < ::Rails::Engine
        isolate_namespace ManageIQ::Providers::Ovirt

        def self.plugin_name
          _('oVirt Provider')
        end
      end
    end
  end
end
