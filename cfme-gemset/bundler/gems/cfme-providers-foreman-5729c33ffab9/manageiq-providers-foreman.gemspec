# -*- encoding: utf-8 -*-
# stub: manageiq-providers-foreman 0.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "manageiq-providers-foreman".freeze
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["ManageIQ Developers".freeze]
  s.date = "2019-05-08"
  s.description = "Foreman Provider for ManageIQ".freeze
  s.files = ["app/models/manageiq/providers/foreman".freeze, "app/models/manageiq/providers/foreman/configuration_manager".freeze, "app/models/manageiq/providers/foreman/configuration_manager.rb".freeze, "app/models/manageiq/providers/foreman/configuration_manager/configuration_profile.rb".freeze, "app/models/manageiq/providers/foreman/configuration_manager/configured_system".freeze, "app/models/manageiq/providers/foreman/configuration_manager/configured_system.rb".freeze, "app/models/manageiq/providers/foreman/configuration_manager/configured_system/placement.rb".freeze, "app/models/manageiq/providers/foreman/configuration_manager/provision_task".freeze, "app/models/manageiq/providers/foreman/configuration_manager/provision_task.rb".freeze, "app/models/manageiq/providers/foreman/configuration_manager/provision_task/options_helper.rb".freeze, "app/models/manageiq/providers/foreman/configuration_manager/provision_task/state_machine.rb".freeze, "app/models/manageiq/providers/foreman/configuration_manager/provision_workflow.rb".freeze, "app/models/manageiq/providers/foreman/configuration_manager/refresh_parser.rb".freeze, "app/models/manageiq/providers/foreman/configuration_manager/refresh_worker".freeze, "app/models/manageiq/providers/foreman/configuration_manager/refresh_worker.rb".freeze, "app/models/manageiq/providers/foreman/configuration_manager/refresh_worker/runner.rb".freeze, "app/models/manageiq/providers/foreman/configuration_manager/refresher.rb".freeze, "app/models/manageiq/providers/foreman/provider.rb".freeze, "app/models/manageiq/providers/foreman/provisioning_manager".freeze, "app/models/manageiq/providers/foreman/provisioning_manager.rb".freeze, "app/models/manageiq/providers/foreman/provisioning_manager/refresh_parser.rb".freeze, "app/models/manageiq/providers/foreman/provisioning_manager/refresh_worker".freeze, "app/models/manageiq/providers/foreman/provisioning_manager/refresh_worker.rb".freeze, "app/models/manageiq/providers/foreman/provisioning_manager/refresh_worker/runner.rb".freeze, "app/models/manageiq/providers/foreman/provisioning_manager/refresher.rb".freeze, "config/initializers/gettext.rb".freeze, "config/settings.yml".freeze, "lib/manageiq-providers-foreman.rb".freeze, "lib/manageiq/providers".freeze, "lib/manageiq/providers/foreman".freeze, "lib/manageiq/providers/foreman.rb".freeze, "lib/manageiq/providers/foreman/engine.rb".freeze, "lib/manageiq/providers/foreman/version.rb".freeze, "lib/tasks/README.md".freeze, "lib/tasks/foreman.rake".freeze, "lib/tasks_private".freeze, "lib/tasks_private/spec.rake".freeze]
  s.homepage = "https://github.com/ManageIQ/manageiq-providers-foreman".freeze
  s.licenses = ["Apache-2.0".freeze]
  s.rubygems_version = "2.6.14.1".freeze
  s.summary = "Foreman Provider for ManageIQ".freeze

  s.installed_by_version = "2.6.14.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<codeclimate-test-reporter>.freeze, ["~> 1.0.0"])
      s.add_development_dependency(%q<simplecov>.freeze, [">= 0"])
    else
      s.add_dependency(%q<codeclimate-test-reporter>.freeze, ["~> 1.0.0"])
      s.add_dependency(%q<simplecov>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<codeclimate-test-reporter>.freeze, ["~> 1.0.0"])
    s.add_dependency(%q<simplecov>.freeze, [">= 0"])
  end
end
