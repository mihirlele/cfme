# -*- encoding: utf-8 -*-
# stub: manageiq-providers-redfish 0.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "manageiq-providers-redfish".freeze
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["ManageIQ Developers".freeze]
  s.date = "2019-05-08"
  s.description = "Redfish Provider for ManageIQ".freeze
  s.files = ["app/models/manageiq/providers/redfish".freeze, "app/models/manageiq/providers/redfish/inventory".freeze, "app/models/manageiq/providers/redfish/inventory.rb".freeze, "app/models/manageiq/providers/redfish/inventory/collector".freeze, "app/models/manageiq/providers/redfish/inventory/collector.rb".freeze, "app/models/manageiq/providers/redfish/inventory/collector/physical_infra_manager.rb".freeze, "app/models/manageiq/providers/redfish/inventory/parser".freeze, "app/models/manageiq/providers/redfish/inventory/parser.rb".freeze, "app/models/manageiq/providers/redfish/inventory/parser/physical_infra_manager.rb".freeze, "app/models/manageiq/providers/redfish/inventory/persister".freeze, "app/models/manageiq/providers/redfish/inventory/persister.rb".freeze, "app/models/manageiq/providers/redfish/inventory/persister/definitions".freeze, "app/models/manageiq/providers/redfish/inventory/persister/definitions/physical_infra_collections.rb".freeze, "app/models/manageiq/providers/redfish/inventory/persister/physical_infra_manager.rb".freeze, "app/models/manageiq/providers/redfish/manager_mixin.rb".freeze, "app/models/manageiq/providers/redfish/physical_infra_manager".freeze, "app/models/manageiq/providers/redfish/physical_infra_manager.rb".freeze, "app/models/manageiq/providers/redfish/physical_infra_manager/event_catcher".freeze, "app/models/manageiq/providers/redfish/physical_infra_manager/event_catcher.rb".freeze, "app/models/manageiq/providers/redfish/physical_infra_manager/event_catcher/runner.rb".freeze, "app/models/manageiq/providers/redfish/physical_infra_manager/event_parser.rb".freeze, "app/models/manageiq/providers/redfish/physical_infra_manager/operations".freeze, "app/models/manageiq/providers/redfish/physical_infra_manager/operations.rb".freeze, "app/models/manageiq/providers/redfish/physical_infra_manager/operations/led.rb".freeze, "app/models/manageiq/providers/redfish/physical_infra_manager/operations/power.rb".freeze, "app/models/manageiq/providers/redfish/physical_infra_manager/physical_chassis.rb".freeze, "app/models/manageiq/providers/redfish/physical_infra_manager/physical_rack.rb".freeze, "app/models/manageiq/providers/redfish/physical_infra_manager/physical_server.rb".freeze, "app/models/manageiq/providers/redfish/physical_infra_manager/refresh_worker".freeze, "app/models/manageiq/providers/redfish/physical_infra_manager/refresh_worker.rb".freeze, "app/models/manageiq/providers/redfish/physical_infra_manager/refresh_worker/runner.rb".freeze, "app/models/manageiq/providers/redfish/physical_infra_manager/refresher.rb".freeze, "config/initializers/gettext.rb".freeze, "config/settings.yml".freeze, "lib/manageiq-providers-redfish.rb".freeze, "lib/manageiq/providers".freeze, "lib/manageiq/providers/redfish".freeze, "lib/manageiq/providers/redfish.rb".freeze, "lib/manageiq/providers/redfish/engine.rb".freeze, "lib/manageiq/providers/redfish/version.rb".freeze, "lib/tasks/README.md".freeze, "lib/tasks/redfish.rake".freeze, "lib/tasks_private".freeze, "lib/tasks_private/spec.rake".freeze]
  s.homepage = "https://github.com/ManageIQ/manageiq-providers-redfish".freeze
  s.licenses = ["Apache-2.0".freeze]
  s.rubygems_version = "2.6.14.1".freeze
  s.summary = "Redfish Provider for ManageIQ".freeze

  s.installed_by_version = "2.6.14.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<redfish_client>.freeze, ["~> 0.4.0"])
      s.add_development_dependency(%q<codeclimate-test-reporter>.freeze, ["~> 1.0.0"])
      s.add_development_dependency(%q<redfish_tools>.freeze, ["~> 0.1"])
      s.add_development_dependency(%q<simplecov>.freeze, [">= 0"])
    else
      s.add_dependency(%q<redfish_client>.freeze, ["~> 0.4.0"])
      s.add_dependency(%q<codeclimate-test-reporter>.freeze, ["~> 1.0.0"])
      s.add_dependency(%q<redfish_tools>.freeze, ["~> 0.1"])
      s.add_dependency(%q<simplecov>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<redfish_client>.freeze, ["~> 0.4.0"])
    s.add_dependency(%q<codeclimate-test-reporter>.freeze, ["~> 1.0.0"])
    s.add_dependency(%q<redfish_tools>.freeze, ["~> 0.1"])
    s.add_dependency(%q<simplecov>.freeze, [">= 0"])
  end
end
