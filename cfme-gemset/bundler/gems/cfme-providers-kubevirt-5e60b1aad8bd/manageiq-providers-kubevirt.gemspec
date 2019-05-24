# -*- encoding: utf-8 -*-
# stub: manageiq-providers-kubevirt 0.0.1 ruby lib

Gem::Specification.new do |s|
  s.name = "manageiq-providers-kubevirt".freeze
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["KubeVirt Developers".freeze]
  s.date = "2019-05-08"
  s.description = "KubeVirt provider for ManageIQ".freeze
  s.files = ["app/models/manageiq/providers/kubevirt".freeze, "app/models/manageiq/providers/kubevirt/constants.rb".freeze, "app/models/manageiq/providers/kubevirt/infra_manager".freeze, "app/models/manageiq/providers/kubevirt/infra_manager.rb".freeze, "app/models/manageiq/providers/kubevirt/infra_manager/connection.rb".freeze, "app/models/manageiq/providers/kubevirt/infra_manager/provision".freeze, "app/models/manageiq/providers/kubevirt/infra_manager/provision.rb".freeze, "app/models/manageiq/providers/kubevirt/infra_manager/provision/cloning.rb".freeze, "app/models/manageiq/providers/kubevirt/infra_manager/provision/state_machine.rb".freeze, "app/models/manageiq/providers/kubevirt/infra_manager/provision_workflow.rb".freeze, "app/models/manageiq/providers/kubevirt/infra_manager/refresh_worker".freeze, "app/models/manageiq/providers/kubevirt/infra_manager/refresh_worker.rb".freeze, "app/models/manageiq/providers/kubevirt/infra_manager/refresh_worker/runner.rb".freeze, "app/models/manageiq/providers/kubevirt/infra_manager/refresher.rb".freeze, "app/models/manageiq/providers/kubevirt/infra_manager/template.rb".freeze, "app/models/manageiq/providers/kubevirt/infra_manager/vm".freeze, "app/models/manageiq/providers/kubevirt/infra_manager/vm.rb".freeze, "app/models/manageiq/providers/kubevirt/infra_manager/vm/operations".freeze, "app/models/manageiq/providers/kubevirt/infra_manager/vm/operations.rb".freeze, "app/models/manageiq/providers/kubevirt/infra_manager/vm/operations/power.rb".freeze, "app/models/manageiq/providers/kubevirt/inventory".freeze, "app/models/manageiq/providers/kubevirt/inventory.rb".freeze, "app/models/manageiq/providers/kubevirt/inventory/collector.rb".freeze, "app/models/manageiq/providers/kubevirt/inventory/parser".freeze, "app/models/manageiq/providers/kubevirt/inventory/parser.rb".freeze, "app/models/manageiq/providers/kubevirt/inventory/parser/full_refresh.rb".freeze, "app/models/manageiq/providers/kubevirt/inventory/parser/partial_refresh.rb".freeze, "app/models/manageiq/providers/kubevirt/inventory/parser/partial_target_refresh.rb".freeze, "app/models/manageiq/providers/kubevirt/inventory/persister.rb".freeze, "app/models/manageiq/providers/kubevirt/memory_calculator.rb".freeze, "app/models/manageiq/providers/kubevirt/refresh_memory.rb".freeze, "config/initializers/gettext.rb".freeze, "config/settings.yml".freeze, "lib/manageiq-providers-kubevirt.rb".freeze, "lib/manageiq/providers".freeze, "lib/manageiq/providers/kube_virt.rb".freeze, "lib/manageiq/providers/kubevirt".freeze, "lib/manageiq/providers/kubevirt/engine.rb".freeze, "lib/manageiq/providers/kubevirt/version.rb".freeze, "lib/tasks/README.md".freeze, "lib/tasks/kubevirt.rake".freeze, "lib/tasks_private".freeze, "lib/tasks_private/spec.rake".freeze]
  s.homepage = "https://github.com/ManageIQ/manageiq-providers-kubevirt".freeze
  s.licenses = ["Apache-2.0".freeze]
  s.rubygems_version = "2.6.14.1".freeze
  s.summary = "KubeVirt provider for ManageIQ".freeze

  s.installed_by_version = "2.6.14.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<fog-kubevirt>.freeze, ["~> 0.2.0"])
      s.add_runtime_dependency(%q<manageiq-providers-kubernetes>.freeze, ["~> 0.1.0"])
      s.add_development_dependency(%q<codeclimate-test-reporter>.freeze, ["~> 1.0.0"])
      s.add_development_dependency(%q<simplecov>.freeze, [">= 0"])
    else
      s.add_dependency(%q<fog-kubevirt>.freeze, ["~> 0.2.0"])
      s.add_dependency(%q<manageiq-providers-kubernetes>.freeze, ["~> 0.1.0"])
      s.add_dependency(%q<codeclimate-test-reporter>.freeze, ["~> 1.0.0"])
      s.add_dependency(%q<simplecov>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<fog-kubevirt>.freeze, ["~> 0.2.0"])
    s.add_dependency(%q<manageiq-providers-kubernetes>.freeze, ["~> 0.1.0"])
    s.add_dependency(%q<codeclimate-test-reporter>.freeze, ["~> 1.0.0"])
    s.add_dependency(%q<simplecov>.freeze, [">= 0"])
  end
end
