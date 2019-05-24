# -*- encoding: utf-8 -*-
# stub: manageiq-providers-ansible_tower 0.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "manageiq-providers-ansible_tower".freeze
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["ManageIQ Developers".freeze]
  s.date = "2019-05-08"
  s.description = "AnsibleTower Provider for ManageIQ".freeze
  s.files = ["app/models/manageiq/providers/ansible_tower".freeze, "app/models/manageiq/providers/ansible_tower/automation_manager".freeze, "app/models/manageiq/providers/ansible_tower/automation_manager.rb".freeze, "app/models/manageiq/providers/ansible_tower/automation_manager/amazon_credential.rb".freeze, "app/models/manageiq/providers/ansible_tower/automation_manager/azure_credential.rb".freeze, "app/models/manageiq/providers/ansible_tower/automation_manager/cloud_credential.rb".freeze, "app/models/manageiq/providers/ansible_tower/automation_manager/configuration_script.rb".freeze, "app/models/manageiq/providers/ansible_tower/automation_manager/configuration_script_source.rb".freeze, "app/models/manageiq/providers/ansible_tower/automation_manager/configuration_workflow.rb".freeze, "app/models/manageiq/providers/ansible_tower/automation_manager/configured_system.rb".freeze, "app/models/manageiq/providers/ansible_tower/automation_manager/credential.rb".freeze, "app/models/manageiq/providers/ansible_tower/automation_manager/event_catcher".freeze, "app/models/manageiq/providers/ansible_tower/automation_manager/event_catcher.rb".freeze, "app/models/manageiq/providers/ansible_tower/automation_manager/event_catcher/runner.rb".freeze, "app/models/manageiq/providers/ansible_tower/automation_manager/event_catcher/stream.rb".freeze, "app/models/manageiq/providers/ansible_tower/automation_manager/event_parser.rb".freeze, "app/models/manageiq/providers/ansible_tower/automation_manager/google_credential.rb".freeze, "app/models/manageiq/providers/ansible_tower/automation_manager/inventory.rb".freeze, "app/models/manageiq/providers/ansible_tower/automation_manager/job".freeze, "app/models/manageiq/providers/ansible_tower/automation_manager/job.rb".freeze, "app/models/manageiq/providers/ansible_tower/automation_manager/job/status.rb".freeze, "app/models/manageiq/providers/ansible_tower/automation_manager/machine_credential.rb".freeze, "app/models/manageiq/providers/ansible_tower/automation_manager/network_credential.rb".freeze, "app/models/manageiq/providers/ansible_tower/automation_manager/openstack_credential.rb".freeze, "app/models/manageiq/providers/ansible_tower/automation_manager/playbook.rb".freeze, "app/models/manageiq/providers/ansible_tower/automation_manager/refresh_worker".freeze, "app/models/manageiq/providers/ansible_tower/automation_manager/refresh_worker.rb".freeze, "app/models/manageiq/providers/ansible_tower/automation_manager/refresh_worker/runner.rb".freeze, "app/models/manageiq/providers/ansible_tower/automation_manager/refresher.rb".freeze, "app/models/manageiq/providers/ansible_tower/automation_manager/rhv_credential.rb".freeze, "app/models/manageiq/providers/ansible_tower/automation_manager/satellite6_credential.rb".freeze, "app/models/manageiq/providers/ansible_tower/automation_manager/scm_credential.rb".freeze, "app/models/manageiq/providers/ansible_tower/automation_manager/vault_credential.rb".freeze, "app/models/manageiq/providers/ansible_tower/automation_manager/vmware_credential.rb".freeze, "app/models/manageiq/providers/ansible_tower/automation_manager/workflow_job".freeze, "app/models/manageiq/providers/ansible_tower/automation_manager/workflow_job.rb".freeze, "app/models/manageiq/providers/ansible_tower/automation_manager/workflow_job/status.rb".freeze, "app/models/manageiq/providers/ansible_tower/inventory".freeze, "app/models/manageiq/providers/ansible_tower/inventory/collector".freeze, "app/models/manageiq/providers/ansible_tower/inventory/collector/automation_manager.rb".freeze, "app/models/manageiq/providers/ansible_tower/inventory/collector/configuration_script_source.rb".freeze, "app/models/manageiq/providers/ansible_tower/inventory/parser".freeze, "app/models/manageiq/providers/ansible_tower/inventory/parser/automation_manager.rb".freeze, "app/models/manageiq/providers/ansible_tower/inventory/parser/configuration_script_source.rb".freeze, "app/models/manageiq/providers/ansible_tower/inventory/persister".freeze, "app/models/manageiq/providers/ansible_tower/inventory/persister.rb".freeze, "app/models/manageiq/providers/ansible_tower/inventory/persister/automation_manager.rb".freeze, "app/models/manageiq/providers/ansible_tower/inventory/persister/configuration_script_source.rb".freeze, "app/models/manageiq/providers/ansible_tower/inventory/persister/definitions".freeze, "app/models/manageiq/providers/ansible_tower/inventory/persister/definitions/collections.rb".freeze, "app/models/manageiq/providers/ansible_tower/provider.rb".freeze, "app/models/manageiq/providers/ansible_tower/shared".freeze, "app/models/manageiq/providers/ansible_tower/shared/automation_manager".freeze, "app/models/manageiq/providers/ansible_tower/shared/automation_manager.rb".freeze, "app/models/manageiq/providers/ansible_tower/shared/automation_manager/amazon_credential.rb".freeze, "app/models/manageiq/providers/ansible_tower/shared/automation_manager/azure_credential.rb".freeze, "app/models/manageiq/providers/ansible_tower/shared/automation_manager/configuration_script.rb".freeze, "app/models/manageiq/providers/ansible_tower/shared/automation_manager/configuration_script_source.rb".freeze, "app/models/manageiq/providers/ansible_tower/shared/automation_manager/configuration_workflow.rb".freeze, "app/models/manageiq/providers/ansible_tower/shared/automation_manager/configured_system.rb".freeze, "app/models/manageiq/providers/ansible_tower/shared/automation_manager/credential.rb".freeze, "app/models/manageiq/providers/ansible_tower/shared/automation_manager/event_catcher".freeze, "app/models/manageiq/providers/ansible_tower/shared/automation_manager/event_catcher/runner.rb".freeze, "app/models/manageiq/providers/ansible_tower/shared/automation_manager/event_catcher/stream.rb".freeze, "app/models/manageiq/providers/ansible_tower/shared/automation_manager/event_parser.rb".freeze, "app/models/manageiq/providers/ansible_tower/shared/automation_manager/google_credential.rb".freeze, "app/models/manageiq/providers/ansible_tower/shared/automation_manager/job".freeze, "app/models/manageiq/providers/ansible_tower/shared/automation_manager/job.rb".freeze, "app/models/manageiq/providers/ansible_tower/shared/automation_manager/job/status.rb".freeze, "app/models/manageiq/providers/ansible_tower/shared/automation_manager/machine_credential.rb".freeze, "app/models/manageiq/providers/ansible_tower/shared/automation_manager/network_credential.rb".freeze, "app/models/manageiq/providers/ansible_tower/shared/automation_manager/openstack_credential.rb".freeze, "app/models/manageiq/providers/ansible_tower/shared/automation_manager/refresher.rb".freeze, "app/models/manageiq/providers/ansible_tower/shared/automation_manager/rhv_credential.rb".freeze, "app/models/manageiq/providers/ansible_tower/shared/automation_manager/satellite6_credential.rb".freeze, "app/models/manageiq/providers/ansible_tower/shared/automation_manager/scm_credential.rb".freeze, "app/models/manageiq/providers/ansible_tower/shared/automation_manager/tower_api.rb".freeze, "app/models/manageiq/providers/ansible_tower/shared/automation_manager/vault_credential.rb".freeze, "app/models/manageiq/providers/ansible_tower/shared/automation_manager/vmware_credential.rb".freeze, "app/models/manageiq/providers/ansible_tower/shared/inventory".freeze, "app/models/manageiq/providers/ansible_tower/shared/inventory/collector".freeze, "app/models/manageiq/providers/ansible_tower/shared/inventory/collector/automation_manager.rb".freeze, "app/models/manageiq/providers/ansible_tower/shared/inventory/collector/configuration_script_source.rb".freeze, "app/models/manageiq/providers/ansible_tower/shared/inventory/parser".freeze, "app/models/manageiq/providers/ansible_tower/shared/inventory/parser/automation_manager.rb".freeze, "app/models/manageiq/providers/ansible_tower/shared/inventory/parser/configuration_script_source.rb".freeze, "app/models/manageiq/providers/ansible_tower/shared/provider.rb".freeze, "config/initializers/gettext.rb".freeze, "config/settings.yml".freeze, "lib/manageiq-providers-ansible_tower.rb".freeze, "lib/manageiq/providers".freeze, "lib/manageiq/providers/ansible_tower".freeze, "lib/manageiq/providers/ansible_tower.rb".freeze, "lib/manageiq/providers/ansible_tower/engine.rb".freeze, "lib/manageiq/providers/ansible_tower/version.rb".freeze, "lib/tasks/README.md".freeze, "lib/tasks/ansible_tower.rake".freeze, "lib/tasks_private".freeze, "lib/tasks_private/spec.rake".freeze, "lib/tasks_private/spec_helper.rake".freeze]
  s.homepage = "https://github.com/ManageIQ/manageiq-providers-ansible_tower".freeze
  s.licenses = ["Apache-2.0".freeze]
  s.rubygems_version = "2.6.14.1".freeze
  s.summary = "AnsibleTower Provider for ManageIQ".freeze

  s.installed_by_version = "2.6.14.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<ansible_tower_client>.freeze, [">= 0.19.1"])
      s.add_development_dependency(%q<codeclimate-test-reporter>.freeze, ["~> 1.0.0"])
      s.add_development_dependency(%q<simplecov>.freeze, [">= 0"])
    else
      s.add_dependency(%q<ansible_tower_client>.freeze, [">= 0.19.1"])
      s.add_dependency(%q<codeclimate-test-reporter>.freeze, ["~> 1.0.0"])
      s.add_dependency(%q<simplecov>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<ansible_tower_client>.freeze, [">= 0.19.1"])
    s.add_dependency(%q<codeclimate-test-reporter>.freeze, ["~> 1.0.0"])
    s.add_dependency(%q<simplecov>.freeze, [">= 0"])
  end
end
