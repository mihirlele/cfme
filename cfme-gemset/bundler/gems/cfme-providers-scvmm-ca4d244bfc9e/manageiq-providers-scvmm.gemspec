# -*- encoding: utf-8 -*-
# stub: manageiq-providers-scvmm 0.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "manageiq-providers-scvmm".freeze
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["ManageIQ Developers".freeze]
  s.date = "2019-05-08"
  s.description = "Scvmm Provider for ManageIQ".freeze
  s.files = ["app/models/manageiq/providers/microsoft".freeze, "app/models/manageiq/providers/microsoft/discovery.rb".freeze, "app/models/manageiq/providers/microsoft/infra_manager".freeze, "app/models/manageiq/providers/microsoft/infra_manager.rb".freeze, "app/models/manageiq/providers/microsoft/infra_manager/host.rb".freeze, "app/models/manageiq/providers/microsoft/infra_manager/parser_mixin.rb".freeze, "app/models/manageiq/providers/microsoft/infra_manager/powershell.rb".freeze, "app/models/manageiq/providers/microsoft/infra_manager/provision".freeze, "app/models/manageiq/providers/microsoft/infra_manager/provision.rb".freeze, "app/models/manageiq/providers/microsoft/infra_manager/provision/cloning.rb".freeze, "app/models/manageiq/providers/microsoft/infra_manager/provision/placement.rb".freeze, "app/models/manageiq/providers/microsoft/infra_manager/provision/state_machine.rb".freeze, "app/models/manageiq/providers/microsoft/infra_manager/provision_workflow.rb".freeze, "app/models/manageiq/providers/microsoft/infra_manager/ps_scripts".freeze, "app/models/manageiq/providers/microsoft/infra_manager/ps_scripts/get_inventory.ps1".freeze, "app/models/manageiq/providers/microsoft/infra_manager/ps_scripts/test_connection.ps1".freeze, "app/models/manageiq/providers/microsoft/infra_manager/refresh_parser.rb".freeze, "app/models/manageiq/providers/microsoft/infra_manager/refresh_worker".freeze, "app/models/manageiq/providers/microsoft/infra_manager/refresh_worker.rb".freeze, "app/models/manageiq/providers/microsoft/infra_manager/refresh_worker/runner.rb".freeze, "app/models/manageiq/providers/microsoft/infra_manager/refresher.rb".freeze, "app/models/manageiq/providers/microsoft/infra_manager/subnet.rb".freeze, "app/models/manageiq/providers/microsoft/infra_manager/template.rb".freeze, "app/models/manageiq/providers/microsoft/infra_manager/vm.rb".freeze, "app/models/manageiq/providers/microsoft/infra_manager/vm_or_template_shared".freeze, "app/models/manageiq/providers/microsoft/infra_manager/vm_or_template_shared.rb".freeze, "app/models/manageiq/providers/microsoft/infra_manager/vm_or_template_shared/scanning.rb".freeze, "app/models/manageiq/providers/microsoft/inventory".freeze, "app/models/manageiq/providers/microsoft/inventory.rb".freeze, "app/models/manageiq/providers/microsoft/inventory/collector".freeze, "app/models/manageiq/providers/microsoft/inventory/collector.rb".freeze, "app/models/manageiq/providers/microsoft/inventory/collector/infra_manager.rb".freeze, "app/models/manageiq/providers/microsoft/inventory/parser".freeze, "app/models/manageiq/providers/microsoft/inventory/parser.rb".freeze, "app/models/manageiq/providers/microsoft/inventory/parser/infra_manager.rb".freeze, "app/models/manageiq/providers/microsoft/inventory/persister".freeze, "app/models/manageiq/providers/microsoft/inventory/persister.rb".freeze, "app/models/manageiq/providers/microsoft/inventory/persister/infra_manager.rb".freeze, "config/initializers/gettext.rb".freeze, "config/settings.yml".freeze, "lib/manageiq-providers-scvmm.rb".freeze, "lib/manageiq/providers".freeze, "lib/manageiq/providers/scvmm".freeze, "lib/manageiq/providers/scvmm.rb".freeze, "lib/manageiq/providers/scvmm/engine.rb".freeze, "lib/manageiq/providers/scvmm/version.rb".freeze, "lib/tasks/README.md".freeze, "lib/tasks_private".freeze, "lib/tasks_private/json.rake".freeze, "lib/tasks_private/spec.rake".freeze]
  s.homepage = "https://github.com/ManageIQ/manageiq-providers-scvmm".freeze
  s.licenses = ["Apache-2.0".freeze]
  s.rubygems_version = "2.6.14.1".freeze
  s.summary = "Scvmm Provider for ManageIQ".freeze

  s.installed_by_version = "2.6.14.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<addressable>.freeze, ["~> 2.4"])
      s.add_development_dependency(%q<codeclimate-test-reporter>.freeze, ["~> 1.0.0"])
      s.add_development_dependency(%q<simplecov>.freeze, [">= 0"])
    else
      s.add_dependency(%q<addressable>.freeze, ["~> 2.4"])
      s.add_dependency(%q<codeclimate-test-reporter>.freeze, ["~> 1.0.0"])
      s.add_dependency(%q<simplecov>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<addressable>.freeze, ["~> 2.4"])
    s.add_dependency(%q<codeclimate-test-reporter>.freeze, ["~> 1.0.0"])
    s.add_dependency(%q<simplecov>.freeze, [">= 0"])
  end
end
