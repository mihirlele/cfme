# -*- encoding: utf-8 -*-
# stub: manageiq-providers-lenovo 0.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "manageiq-providers-lenovo".freeze
  s.version = "0.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["ManageIQ Developers".freeze]
  s.date = "2019-05-08"
  s.description = "Lenovo Provider for ManageIQ".freeze
  s.files = ["app/models/manageiq/providers/lenovo".freeze, "app/models/manageiq/providers/lenovo/manager_mixin.rb".freeze, "app/models/manageiq/providers/lenovo/physical_infra_manager".freeze, "app/models/manageiq/providers/lenovo/physical_infra_manager.rb".freeze, "app/models/manageiq/providers/lenovo/physical_infra_manager/authenticatable_provider.rb".freeze, "app/models/manageiq/providers/lenovo/physical_infra_manager/event_catcher".freeze, "app/models/manageiq/providers/lenovo/physical_infra_manager/event_catcher.rb".freeze, "app/models/manageiq/providers/lenovo/physical_infra_manager/event_catcher/runner.rb".freeze, "app/models/manageiq/providers/lenovo/physical_infra_manager/event_catcher/stream.rb".freeze, "app/models/manageiq/providers/lenovo/physical_infra_manager/event_parser.rb".freeze, "app/models/manageiq/providers/lenovo/physical_infra_manager/firmware.rb".freeze, "app/models/manageiq/providers/lenovo/physical_infra_manager/operations".freeze, "app/models/manageiq/providers/lenovo/physical_infra_manager/operations.rb".freeze, "app/models/manageiq/providers/lenovo/physical_infra_manager/operations/sender.rb".freeze, "app/models/manageiq/providers/lenovo/physical_infra_manager/parser".freeze, "app/models/manageiq/providers/lenovo/physical_infra_manager/parser.rb".freeze, "app/models/manageiq/providers/lenovo/physical_infra_manager/parser/compliance_policy_parser.rb".freeze, "app/models/manageiq/providers/lenovo/physical_infra_manager/parser/component_parser.rb".freeze, "app/models/manageiq/providers/lenovo/physical_infra_manager/parser/config_pattern_parser.rb".freeze, "app/models/manageiq/providers/lenovo/physical_infra_manager/parser/firmware_parser.rb".freeze, "app/models/manageiq/providers/lenovo/physical_infra_manager/parser/guest_device_parser.rb".freeze, "app/models/manageiq/providers/lenovo/physical_infra_manager/parser/management_device_parser.rb".freeze, "app/models/manageiq/providers/lenovo/physical_infra_manager/parser/network_device_parser.rb".freeze, "app/models/manageiq/providers/lenovo/physical_infra_manager/parser/physical_chassis_parser.rb".freeze, "app/models/manageiq/providers/lenovo/physical_infra_manager/parser/physical_network_ports_parser.rb".freeze, "app/models/manageiq/providers/lenovo/physical_infra_manager/parser/physical_rack_parser.rb".freeze, "app/models/manageiq/providers/lenovo/physical_infra_manager/parser/physical_server_parser.rb".freeze, "app/models/manageiq/providers/lenovo/physical_infra_manager/parser/physical_storage_parser.rb".freeze, "app/models/manageiq/providers/lenovo/physical_infra_manager/parser/physical_switch_parser.rb".freeze, "app/models/manageiq/providers/lenovo/physical_infra_manager/parser/storage_device_parser.rb".freeze, "app/models/manageiq/providers/lenovo/physical_infra_manager/physical_chassis".freeze, "app/models/manageiq/providers/lenovo/physical_infra_manager/physical_chassis.rb".freeze, "app/models/manageiq/providers/lenovo/physical_infra_manager/physical_chassis/operations.rb".freeze, "app/models/manageiq/providers/lenovo/physical_infra_manager/physical_rack.rb".freeze, "app/models/manageiq/providers/lenovo/physical_infra_manager/physical_server".freeze, "app/models/manageiq/providers/lenovo/physical_infra_manager/physical_server.rb".freeze, "app/models/manageiq/providers/lenovo/physical_infra_manager/physical_server/remote_console.rb".freeze, "app/models/manageiq/providers/lenovo/physical_infra_manager/physical_storage.rb".freeze, "app/models/manageiq/providers/lenovo/physical_infra_manager/physical_switch".freeze, "app/models/manageiq/providers/lenovo/physical_infra_manager/physical_switch.rb".freeze, "app/models/manageiq/providers/lenovo/physical_infra_manager/physical_switch/operations.rb".freeze, "app/models/manageiq/providers/lenovo/physical_infra_manager/provision_task.rb".freeze, "app/models/manageiq/providers/lenovo/physical_infra_manager/refresh_parser.rb".freeze, "app/models/manageiq/providers/lenovo/physical_infra_manager/refresh_worker".freeze, "app/models/manageiq/providers/lenovo/physical_infra_manager/refresh_worker.rb".freeze, "app/models/manageiq/providers/lenovo/physical_infra_manager/refresh_worker/runner.rb".freeze, "app/models/manageiq/providers/lenovo/physical_infra_manager/refresher.rb".freeze, "app/models/manageiq/providers/lenovo/provider.rb".freeze, "app/models/manageiq/providers/lenovo/refresh_helper_methods.rb".freeze, "config/initializers/gettext.rb".freeze, "config/settings.yml".freeze, "lib/manageiq-providers-lenovo.rb".freeze, "lib/manageiq/providers".freeze, "lib/manageiq/providers/lenovo".freeze, "lib/manageiq/providers/lenovo.rb".freeze, "lib/manageiq/providers/lenovo/engine.rb".freeze, "lib/manageiq/providers/lenovo/version.rb".freeze, "lib/tasks/README.md".freeze, "lib/tasks/lenovo.rake".freeze, "lib/tasks_private".freeze, "lib/tasks_private/spec.rake".freeze]
  s.homepage = "https://github.com/ManageIQ/manageiq-providers-lenovo".freeze
  s.licenses = ["Apache-2.0".freeze]
  s.rubygems_version = "2.6.14.1".freeze
  s.summary = "Lenovo Provider for ManageIQ".freeze

  s.installed_by_version = "2.6.14.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<xclarity_client>.freeze, ["~> 0.6.0"])
      s.add_development_dependency(%q<codeclimate-test-reporter>.freeze, ["~> 1.0.0"])
      s.add_development_dependency(%q<webmock>.freeze, ["~> 2.1.0"])
      s.add_development_dependency(%q<simplecov>.freeze, [">= 0"])
      s.add_development_dependency(%q<faker>.freeze, ["= 1.8.3"])
    else
      s.add_dependency(%q<xclarity_client>.freeze, ["~> 0.6.0"])
      s.add_dependency(%q<codeclimate-test-reporter>.freeze, ["~> 1.0.0"])
      s.add_dependency(%q<webmock>.freeze, ["~> 2.1.0"])
      s.add_dependency(%q<simplecov>.freeze, [">= 0"])
      s.add_dependency(%q<faker>.freeze, ["= 1.8.3"])
    end
  else
    s.add_dependency(%q<xclarity_client>.freeze, ["~> 0.6.0"])
    s.add_dependency(%q<codeclimate-test-reporter>.freeze, ["~> 1.0.0"])
    s.add_dependency(%q<webmock>.freeze, ["~> 2.1.0"])
    s.add_dependency(%q<simplecov>.freeze, [">= 0"])
    s.add_dependency(%q<faker>.freeze, ["= 1.8.3"])
  end
end
