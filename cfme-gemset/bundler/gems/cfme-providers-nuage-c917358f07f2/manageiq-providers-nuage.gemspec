# -*- encoding: utf-8 -*-
# stub: manageiq-providers-nuage 0.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "manageiq-providers-nuage".freeze
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["ManageIQ Developers".freeze]
  s.date = "2019-05-08"
  s.description = "Nuage Provider for ManageIQ".freeze
  s.files = ["app/helpers".freeze, "app/helpers/manageiq".freeze, "app/helpers/manageiq/providers".freeze, "app/helpers/manageiq/providers/nuage".freeze, "app/helpers/manageiq/providers/nuage/toolbar_overrides".freeze, "app/helpers/manageiq/providers/nuage/toolbar_overrides/network_router_center.rb".freeze, "app/javascript".freeze, "app/javascript/components".freeze, "app/javascript/components/create-nuage-cloud-subnet-form.jsx".freeze, "app/javascript/components/forms".freeze, "app/javascript/components/forms/nuage-cloud-subnet-form.jsx".freeze, "app/javascript/packs".freeze, "app/javascript/packs/component-definitions-common.js".freeze, "app/javascript/utils".freeze, "app/javascript/utils/api.js".freeze, "app/javascript/utils/validators.js".freeze, "app/models/manageiq/providers/nuage".freeze, "app/models/manageiq/providers/nuage/ansible_crud_mixin.rb".freeze, "app/models/manageiq/providers/nuage/inventory".freeze, "app/models/manageiq/providers/nuage/inventory.rb".freeze, "app/models/manageiq/providers/nuage/inventory/collector".freeze, "app/models/manageiq/providers/nuage/inventory/collector.rb".freeze, "app/models/manageiq/providers/nuage/inventory/collector/network_manager.rb".freeze, "app/models/manageiq/providers/nuage/inventory/collector/target_collection.rb".freeze, "app/models/manageiq/providers/nuage/inventory/parser".freeze, "app/models/manageiq/providers/nuage/inventory/parser.rb".freeze, "app/models/manageiq/providers/nuage/inventory/parser/network_manager.rb".freeze, "app/models/manageiq/providers/nuage/inventory/persister".freeze, "app/models/manageiq/providers/nuage/inventory/persister.rb".freeze, "app/models/manageiq/providers/nuage/inventory/persister/definitions".freeze, "app/models/manageiq/providers/nuage/inventory/persister/definitions/network_collections.rb".freeze, "app/models/manageiq/providers/nuage/inventory/persister/network_manager.rb".freeze, "app/models/manageiq/providers/nuage/inventory/persister/target_collection.rb".freeze, "app/models/manageiq/providers/nuage/manager_mixin.rb".freeze, "app/models/manageiq/providers/nuage/network_manager".freeze, "app/models/manageiq/providers/nuage/network_manager.rb".freeze, "app/models/manageiq/providers/nuage/network_manager/cloud_network".freeze, "app/models/manageiq/providers/nuage/network_manager/cloud_network.rb".freeze, "app/models/manageiq/providers/nuage/network_manager/cloud_network/floating.rb".freeze, "app/models/manageiq/providers/nuage/network_manager/cloud_subnet".freeze, "app/models/manageiq/providers/nuage/network_manager/cloud_subnet.rb".freeze, "app/models/manageiq/providers/nuage/network_manager/cloud_subnet/l2.rb".freeze, "app/models/manageiq/providers/nuage/network_manager/cloud_subnet/l3.rb".freeze, "app/models/manageiq/providers/nuage/network_manager/cloud_tenant.rb".freeze, "app/models/manageiq/providers/nuage/network_manager/event_catcher".freeze, "app/models/manageiq/providers/nuage/network_manager/event_catcher.rb".freeze, "app/models/manageiq/providers/nuage/network_manager/event_catcher/messaging_handler.rb".freeze, "app/models/manageiq/providers/nuage/network_manager/event_catcher/runner.rb".freeze, "app/models/manageiq/providers/nuage/network_manager/event_catcher/stream.rb".freeze, "app/models/manageiq/providers/nuage/network_manager/event_parser.rb".freeze, "app/models/manageiq/providers/nuage/network_manager/event_target_parser.rb".freeze, "app/models/manageiq/providers/nuage/network_manager/floating_ip.rb".freeze, "app/models/manageiq/providers/nuage/network_manager/network_port".freeze, "app/models/manageiq/providers/nuage/network_manager/network_port.rb".freeze, "app/models/manageiq/providers/nuage/network_manager/network_port/bridge.rb".freeze, "app/models/manageiq/providers/nuage/network_manager/network_port/container.rb".freeze, "app/models/manageiq/providers/nuage/network_manager/network_port/host.rb".freeze, "app/models/manageiq/providers/nuage/network_manager/network_port/vm.rb".freeze, "app/models/manageiq/providers/nuage/network_manager/network_router.rb".freeze, "app/models/manageiq/providers/nuage/network_manager/refresh_worker".freeze, "app/models/manageiq/providers/nuage/network_manager/refresh_worker.rb".freeze, "app/models/manageiq/providers/nuage/network_manager/refresh_worker/runner.rb".freeze, "app/models/manageiq/providers/nuage/network_manager/refresher.rb".freeze, "app/models/manageiq/providers/nuage/network_manager/security_group.rb".freeze, "app/models/manageiq/providers/nuage/network_manager/vsd_client".freeze, "app/models/manageiq/providers/nuage/network_manager/vsd_client.rb".freeze, "app/models/manageiq/providers/nuage/network_manager/vsd_client/rest.rb".freeze, "app/models/manageiq/providers/nuage/refresh_parser_common".freeze, "app/models/manageiq/providers/nuage/refresh_parser_common/helper_methods.rb".freeze, "config/initializers/gettext.rb".freeze, "config/settings.yml".freeze, "lib/manageiq-providers-nuage.rb".freeze, "lib/manageiq/providers".freeze, "lib/manageiq/providers/nuage".freeze, "lib/manageiq/providers/nuage.rb".freeze, "lib/manageiq/providers/nuage/engine.rb".freeze, "lib/manageiq/providers/nuage/version.rb".freeze, "lib/tasks/README.md".freeze, "lib/tasks/nuage.rake".freeze, "lib/tasks_private".freeze, "lib/tasks_private/spec.rake".freeze]
  s.homepage = "https://github.com/ManageIQ/manageiq-providers-nuage".freeze
  s.licenses = ["Apache-2.0".freeze]
  s.rubygems_version = "2.6.14.1".freeze
  s.summary = "Nuage Provider for ManageIQ".freeze

  s.installed_by_version = "2.6.14.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<excon>.freeze, ["~> 0.40"])
      s.add_development_dependency(%q<codeclimate-test-reporter>.freeze, ["~> 1.0.0"])
      s.add_development_dependency(%q<simplecov>.freeze, [">= 0"])
    else
      s.add_dependency(%q<excon>.freeze, ["~> 0.40"])
      s.add_dependency(%q<codeclimate-test-reporter>.freeze, ["~> 1.0.0"])
      s.add_dependency(%q<simplecov>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<excon>.freeze, ["~> 0.40"])
    s.add_dependency(%q<codeclimate-test-reporter>.freeze, ["~> 1.0.0"])
    s.add_dependency(%q<simplecov>.freeze, [">= 0"])
  end
end
