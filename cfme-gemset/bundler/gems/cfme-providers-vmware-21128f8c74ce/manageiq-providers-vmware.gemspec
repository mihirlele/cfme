# -*- encoding: utf-8 -*-
# stub: manageiq-providers-vmware 0.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "manageiq-providers-vmware".freeze
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["ManageIQ Developers".freeze]
  s.date = "2019-05-08"
  s.description = "Vmware Provider for ManageIQ".freeze
  s.files = ["app/models/manageiq/providers/vmware".freeze, "app/models/manageiq/providers/vmware/cloud_manager".freeze, "app/models/manageiq/providers/vmware/cloud_manager.rb".freeze, "app/models/manageiq/providers/vmware/cloud_manager/availability_zone.rb".freeze, "app/models/manageiq/providers/vmware/cloud_manager/event_catcher".freeze, "app/models/manageiq/providers/vmware/cloud_manager/event_catcher.rb".freeze, "app/models/manageiq/providers/vmware/cloud_manager/event_catcher/event.rb".freeze, "app/models/manageiq/providers/vmware/cloud_manager/event_catcher/runner.rb".freeze, "app/models/manageiq/providers/vmware/cloud_manager/event_catcher/stream.rb".freeze, "app/models/manageiq/providers/vmware/cloud_manager/event_catcher_mixin.rb".freeze, "app/models/manageiq/providers/vmware/cloud_manager/event_parser.rb".freeze, "app/models/manageiq/providers/vmware/cloud_manager/manager_events_mixin.rb".freeze, "app/models/manageiq/providers/vmware/cloud_manager/orchestration_service_option_converter.rb".freeze, "app/models/manageiq/providers/vmware/cloud_manager/orchestration_stack".freeze, "app/models/manageiq/providers/vmware/cloud_manager/orchestration_stack.rb".freeze, "app/models/manageiq/providers/vmware/cloud_manager/orchestration_stack/status.rb".freeze, "app/models/manageiq/providers/vmware/cloud_manager/orchestration_template.rb".freeze, "app/models/manageiq/providers/vmware/cloud_manager/ovf_template.rb".freeze, "app/models/manageiq/providers/vmware/cloud_manager/refresh_parser.rb".freeze, "app/models/manageiq/providers/vmware/cloud_manager/refresh_worker".freeze, "app/models/manageiq/providers/vmware/cloud_manager/refresh_worker.rb".freeze, "app/models/manageiq/providers/vmware/cloud_manager/refresh_worker/runner.rb".freeze, "app/models/manageiq/providers/vmware/cloud_manager/refresher.rb".freeze, "app/models/manageiq/providers/vmware/cloud_manager/snapshot.rb".freeze, "app/models/manageiq/providers/vmware/cloud_manager/template.rb".freeze, "app/models/manageiq/providers/vmware/cloud_manager/vm".freeze, "app/models/manageiq/providers/vmware/cloud_manager/vm.rb".freeze, "app/models/manageiq/providers/vmware/cloud_manager/vm/operations".freeze, "app/models/manageiq/providers/vmware/cloud_manager/vm/operations.rb".freeze, "app/models/manageiq/providers/vmware/cloud_manager/vm/operations/power.rb".freeze, "app/models/manageiq/providers/vmware/cloud_manager/vm/reconfigure.rb".freeze, "app/models/manageiq/providers/vmware/cloud_manager/vm/remote_console.rb".freeze, "app/models/manageiq/providers/vmware/discovery.rb".freeze, "app/models/manageiq/providers/vmware/infra_manager".freeze, "app/models/manageiq/providers/vmware/infra_manager.rb".freeze, "app/models/manageiq/providers/vmware/infra_manager/distributed_virtual_switch.rb".freeze, "app/models/manageiq/providers/vmware/infra_manager/event_catcher".freeze, "app/models/manageiq/providers/vmware/infra_manager/event_catcher.rb".freeze, "app/models/manageiq/providers/vmware/infra_manager/event_catcher/runner.rb".freeze, "app/models/manageiq/providers/vmware/infra_manager/event_parser.rb".freeze, "app/models/manageiq/providers/vmware/infra_manager/host.rb".freeze, "app/models/manageiq/providers/vmware/infra_manager/host_esx.rb".freeze, "app/models/manageiq/providers/vmware/infra_manager/host_virtual_switch.rb".freeze, "app/models/manageiq/providers/vmware/infra_manager/inventory".freeze, "app/models/manageiq/providers/vmware/infra_manager/inventory.rb".freeze, "app/models/manageiq/providers/vmware/infra_manager/inventory/cache.rb".freeze, "app/models/manageiq/providers/vmware/infra_manager/inventory/collector".freeze, "app/models/manageiq/providers/vmware/infra_manager/inventory/collector.rb".freeze, "app/models/manageiq/providers/vmware/infra_manager/inventory/collector/property_collector.rb".freeze, "app/models/manageiq/providers/vmware/infra_manager/inventory/parser".freeze, "app/models/manageiq/providers/vmware/infra_manager/inventory/parser.rb".freeze, "app/models/manageiq/providers/vmware/infra_manager/inventory/parser/compute_resource.rb".freeze, "app/models/manageiq/providers/vmware/infra_manager/inventory/parser/datastore.rb".freeze, "app/models/manageiq/providers/vmware/infra_manager/inventory/parser/distributed_virtual_switch.rb".freeze, "app/models/manageiq/providers/vmware/infra_manager/inventory/parser/host_system.rb".freeze, "app/models/manageiq/providers/vmware/infra_manager/inventory/parser/resource_pool.rb".freeze, "app/models/manageiq/providers/vmware/infra_manager/inventory/parser/virtual_machine.rb".freeze, "app/models/manageiq/providers/vmware/infra_manager/inventory/persister".freeze, "app/models/manageiq/providers/vmware/infra_manager/inventory/persister.rb".freeze, "app/models/manageiq/providers/vmware/infra_manager/inventory/persister/batch.rb".freeze, "app/models/manageiq/providers/vmware/infra_manager/inventory/persister/targeted.rb".freeze, "app/models/manageiq/providers/vmware/infra_manager/inventory/saver.rb".freeze, "app/models/manageiq/providers/vmware/infra_manager/metrics_capture.rb".freeze, "app/models/manageiq/providers/vmware/infra_manager/metrics_collector_worker".freeze, "app/models/manageiq/providers/vmware/infra_manager/metrics_collector_worker.rb".freeze, "app/models/manageiq/providers/vmware/infra_manager/metrics_collector_worker/runner.rb".freeze, "app/models/manageiq/providers/vmware/infra_manager/provision".freeze, "app/models/manageiq/providers/vmware/infra_manager/provision.rb".freeze, "app/models/manageiq/providers/vmware/infra_manager/provision/cloning.rb".freeze, "app/models/manageiq/providers/vmware/infra_manager/provision/configuration".freeze, "app/models/manageiq/providers/vmware/infra_manager/provision/configuration.rb".freeze, "app/models/manageiq/providers/vmware/infra_manager/provision/configuration/container.rb".freeze, "app/models/manageiq/providers/vmware/infra_manager/provision/configuration/disk.rb".freeze, "app/models/manageiq/providers/vmware/infra_manager/provision/configuration/network.rb".freeze, "app/models/manageiq/providers/vmware/infra_manager/provision/customization.rb".freeze, "app/models/manageiq/providers/vmware/infra_manager/provision/placement.rb".freeze, "app/models/manageiq/providers/vmware/infra_manager/provision/state_machine.rb".freeze, "app/models/manageiq/providers/vmware/infra_manager/provision_via_pxe".freeze, "app/models/manageiq/providers/vmware/infra_manager/provision_via_pxe.rb".freeze, "app/models/manageiq/providers/vmware/infra_manager/provision_via_pxe/cloning.rb".freeze, "app/models/manageiq/providers/vmware/infra_manager/provision_via_pxe/pxe.rb".freeze, "app/models/manageiq/providers/vmware/infra_manager/provision_via_pxe/state_machine.rb".freeze, "app/models/manageiq/providers/vmware/infra_manager/provision_workflow".freeze, "app/models/manageiq/providers/vmware/infra_manager/provision_workflow.rb".freeze, "app/models/manageiq/providers/vmware/infra_manager/provision_workflow/dialog_field_validation.rb".freeze, "app/models/manageiq/providers/vmware/infra_manager/refresh_parser".freeze, "app/models/manageiq/providers/vmware/infra_manager/refresh_parser.rb".freeze, "app/models/manageiq/providers/vmware/infra_manager/refresh_parser/filter.rb".freeze, "app/models/manageiq/providers/vmware/infra_manager/refresh_worker".freeze, "app/models/manageiq/providers/vmware/infra_manager/refresh_worker.rb".freeze, "app/models/manageiq/providers/vmware/infra_manager/refresh_worker/runner.rb".freeze, "app/models/manageiq/providers/vmware/infra_manager/refresher.rb".freeze, "app/models/manageiq/providers/vmware/infra_manager/selector_spec.rb".freeze, "app/models/manageiq/providers/vmware/infra_manager/template.rb".freeze, "app/models/manageiq/providers/vmware/infra_manager/vim_connect_mixin.rb".freeze, "app/models/manageiq/providers/vmware/infra_manager/vm".freeze, "app/models/manageiq/providers/vmware/infra_manager/vm.rb".freeze, "app/models/manageiq/providers/vmware/infra_manager/vm/operations".freeze, "app/models/manageiq/providers/vmware/infra_manager/vm/operations.rb".freeze, "app/models/manageiq/providers/vmware/infra_manager/vm/operations/guest.rb".freeze, "app/models/manageiq/providers/vmware/infra_manager/vm/operations/snapshot.rb".freeze, "app/models/manageiq/providers/vmware/infra_manager/vm/reconfigure.rb".freeze, "app/models/manageiq/providers/vmware/infra_manager/vm/remote_console.rb".freeze, "app/models/manageiq/providers/vmware/infra_manager/vm_or_template_shared".freeze, "app/models/manageiq/providers/vmware/infra_manager/vm_or_template_shared.rb".freeze, "app/models/manageiq/providers/vmware/infra_manager/vm_or_template_shared/disconnect.rb".freeze, "app/models/manageiq/providers/vmware/infra_manager/vm_or_template_shared/refresh_on_scan.rb".freeze, "app/models/manageiq/providers/vmware/infra_manager/vm_or_template_shared/scanning.rb".freeze, "app/models/manageiq/providers/vmware/inventory".freeze, "app/models/manageiq/providers/vmware/inventory.rb".freeze, "app/models/manageiq/providers/vmware/inventory/collector".freeze, "app/models/manageiq/providers/vmware/inventory/collector.rb".freeze, "app/models/manageiq/providers/vmware/inventory/collector/cloud_manager.rb".freeze, "app/models/manageiq/providers/vmware/inventory/parser".freeze, "app/models/manageiq/providers/vmware/inventory/parser.rb".freeze, "app/models/manageiq/providers/vmware/inventory/parser/cloud_manager.rb".freeze, "app/models/manageiq/providers/vmware/inventory/persister".freeze, "app/models/manageiq/providers/vmware/inventory/persister.rb".freeze, "app/models/manageiq/providers/vmware/inventory/persister/cloud_manager.rb".freeze, "app/models/manageiq/providers/vmware/inventory/persister/definitions".freeze, "app/models/manageiq/providers/vmware/inventory/persister/definitions/cloud_collections.rb".freeze, "app/models/manageiq/providers/vmware/inventory/persister/definitions/infra_collections.rb".freeze, "app/models/manageiq/providers/vmware/manager_auth_mixin.rb".freeze, "app/models/manageiq/providers/vmware/network_manager".freeze, "app/models/manageiq/providers/vmware/network_manager.rb".freeze, "app/models/manageiq/providers/vmware/network_manager/cloud_network".freeze, "app/models/manageiq/providers/vmware/network_manager/cloud_network.rb".freeze, "app/models/manageiq/providers/vmware/network_manager/cloud_network/org_vdc_net.rb".freeze, "app/models/manageiq/providers/vmware/network_manager/cloud_network/vapp_net.rb".freeze, "app/models/manageiq/providers/vmware/network_manager/cloud_subnet.rb".freeze, "app/models/manageiq/providers/vmware/network_manager/floating_ip.rb".freeze, "app/models/manageiq/providers/vmware/network_manager/network_port.rb".freeze, "app/models/manageiq/providers/vmware/network_manager/network_router.rb".freeze, "app/models/manageiq/providers/vmware/network_manager/refresh_parser.rb".freeze, "app/models/manageiq/providers/vmware/network_manager/refresh_worker".freeze, "app/models/manageiq/providers/vmware/network_manager/refresh_worker.rb".freeze, "app/models/manageiq/providers/vmware/network_manager/refresh_worker/runner.rb".freeze, "app/models/manageiq/providers/vmware/network_manager/refresher.rb".freeze, "app/models/manageiq/providers/vmware/refresh_helper_methods.rb".freeze, "app/models/miq_ems_refresh_core_worker".freeze, "app/models/miq_ems_refresh_core_worker.rb".freeze, "app/models/miq_ems_refresh_core_worker/runner.rb".freeze, "app/models/miq_vim_broker_worker".freeze, "app/models/miq_vim_broker_worker.rb".freeze, "app/models/miq_vim_broker_worker/runner.rb".freeze, "config/initializers/gettext.rb".freeze, "config/settings.yml".freeze, "config/settings/development.yml".freeze, "lib/manageiq-providers-vmware.rb".freeze, "lib/manageiq/providers".freeze, "lib/manageiq/providers/vmware".freeze, "lib/manageiq/providers/vmware.rb".freeze, "lib/manageiq/providers/vmware/engine.rb".freeze, "lib/manageiq/providers/vmware/version.rb".freeze, "lib/tasks/README.md".freeze, "lib/tasks/vmware.rake".freeze, "lib/tasks_private".freeze, "lib/tasks_private/spec.rake".freeze]
  s.homepage = "https://github.com/ManageIQ/manageiq-providers-vmware".freeze
  s.licenses = ["Apache-2.0".freeze]
  s.rubygems_version = "2.6.14.1".freeze
  s.summary = "Vmware Provider for ManageIQ".freeze

  s.installed_by_version = "2.6.14.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<fog-vcloud-director>.freeze, ["~> 0.3.0"])
      s.add_runtime_dependency(%q<vmware_web_service>.freeze, ["~> 0.3.0"])
      s.add_runtime_dependency(%q<rbvmomi>.freeze, ["~> 1.13.0"])
      s.add_development_dependency(%q<codeclimate-test-reporter>.freeze, ["~> 1.0.0"])
      s.add_development_dependency(%q<simplecov>.freeze, [">= 0"])
    else
      s.add_dependency(%q<fog-vcloud-director>.freeze, ["~> 0.3.0"])
      s.add_dependency(%q<vmware_web_service>.freeze, ["~> 0.3.0"])
      s.add_dependency(%q<rbvmomi>.freeze, ["~> 1.13.0"])
      s.add_dependency(%q<codeclimate-test-reporter>.freeze, ["~> 1.0.0"])
      s.add_dependency(%q<simplecov>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<fog-vcloud-director>.freeze, ["~> 0.3.0"])
    s.add_dependency(%q<vmware_web_service>.freeze, ["~> 0.3.0"])
    s.add_dependency(%q<rbvmomi>.freeze, ["~> 1.13.0"])
    s.add_dependency(%q<codeclimate-test-reporter>.freeze, ["~> 1.0.0"])
    s.add_dependency(%q<simplecov>.freeze, [">= 0"])
  end
end
