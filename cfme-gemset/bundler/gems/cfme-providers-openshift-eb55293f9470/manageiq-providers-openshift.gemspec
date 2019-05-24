# -*- encoding: utf-8 -*-
# stub: manageiq-providers-openshift 0.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "manageiq-providers-openshift".freeze
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["ManageIQ Developers".freeze]
  s.date = "2019-05-08"
  s.description = "Openshift Provider for ManageIQ".freeze
  s.files = ["app/models/manageiq/providers/openshift".freeze, "app/models/manageiq/providers/openshift/container_manager".freeze, "app/models/manageiq/providers/openshift/container_manager.rb".freeze, "app/models/manageiq/providers/openshift/container_manager/container_image.rb".freeze, "app/models/manageiq/providers/openshift/container_manager/container_template.rb".freeze, "app/models/manageiq/providers/openshift/container_manager/event_catcher".freeze, "app/models/manageiq/providers/openshift/container_manager/event_catcher.rb".freeze, "app/models/manageiq/providers/openshift/container_manager/event_catcher/runner.rb".freeze, "app/models/manageiq/providers/openshift/container_manager/event_parser.rb".freeze, "app/models/manageiq/providers/openshift/container_manager/inventory_collector_worker".freeze, "app/models/manageiq/providers/openshift/container_manager/inventory_collector_worker.rb".freeze, "app/models/manageiq/providers/openshift/container_manager/inventory_collector_worker/runner.rb".freeze, "app/models/manageiq/providers/openshift/container_manager/metrics_collector_worker".freeze, "app/models/manageiq/providers/openshift/container_manager/metrics_collector_worker.rb".freeze, "app/models/manageiq/providers/openshift/container_manager/metrics_collector_worker/runner.rb".freeze, "app/models/manageiq/providers/openshift/container_manager/options.rb".freeze, "app/models/manageiq/providers/openshift/container_manager/orchestration_stack".freeze, "app/models/manageiq/providers/openshift/container_manager/orchestration_stack.rb".freeze, "app/models/manageiq/providers/openshift/container_manager/orchestration_stack/status.rb".freeze, "app/models/manageiq/providers/openshift/container_manager/refresh_parser.rb".freeze, "app/models/manageiq/providers/openshift/container_manager/refresh_worker".freeze, "app/models/manageiq/providers/openshift/container_manager/refresh_worker.rb".freeze, "app/models/manageiq/providers/openshift/container_manager/refresh_worker/runner.rb".freeze, "app/models/manageiq/providers/openshift/container_manager/refresher.rb".freeze, "app/models/manageiq/providers/openshift/container_manager/service_instance.rb".freeze, "app/models/manageiq/providers/openshift/container_manager/service_offering.rb".freeze, "app/models/manageiq/providers/openshift/container_manager/service_parameters_set.rb".freeze, "app/models/manageiq/providers/openshift/container_manager_mixin.rb".freeze, "app/models/manageiq/providers/openshift/inventory".freeze, "app/models/manageiq/providers/openshift/inventory.rb".freeze, "app/models/manageiq/providers/openshift/inventory/collector".freeze, "app/models/manageiq/providers/openshift/inventory/collector.rb".freeze, "app/models/manageiq/providers/openshift/inventory/collector/container_manager.rb".freeze, "app/models/manageiq/providers/openshift/inventory/collector/target_collection.rb".freeze, "app/models/manageiq/providers/openshift/inventory/collector/watches.rb".freeze, "app/models/manageiq/providers/openshift/inventory/parser".freeze, "app/models/manageiq/providers/openshift/inventory/parser.rb".freeze, "app/models/manageiq/providers/openshift/inventory/parser/container_manager.rb".freeze, "app/models/manageiq/providers/openshift/inventory/parser/watches.rb".freeze, "app/models/manageiq/providers/openshift/inventory/persister".freeze, "app/models/manageiq/providers/openshift/inventory/persister.rb".freeze, "app/models/manageiq/providers/openshift/inventory/persister/container_manager.rb".freeze, "app/models/manageiq/providers/openshift/inventory/persister/target_collection.rb".freeze, "app/models/manageiq/providers/openshift/monitoring_manager".freeze, "app/models/manageiq/providers/openshift/monitoring_manager.rb".freeze, "app/models/manageiq/providers/openshift/monitoring_manager/event_catcher".freeze, "app/models/manageiq/providers/openshift/monitoring_manager/event_catcher.rb".freeze, "app/models/manageiq/providers/openshift/monitoring_manager/event_catcher/runner.rb".freeze, "config/initializers/gettext.rb".freeze, "config/settings.yml".freeze, "lib/manageiq-providers-openshift.rb".freeze, "lib/manageiq/providers".freeze, "lib/manageiq/providers/openshift".freeze, "lib/manageiq/providers/openshift.rb".freeze, "lib/manageiq/providers/openshift/engine.rb".freeze, "lib/manageiq/providers/openshift/version.rb".freeze, "lib/tasks/README.md".freeze, "lib/tasks/openshift.rake".freeze, "lib/tasks_private".freeze, "lib/tasks_private/spec.rake".freeze]
  s.homepage = "https://github.com/ManageIQ/manageiq-providers-openshift".freeze
  s.licenses = ["Apache-2.0".freeze]
  s.rubygems_version = "2.6.14.1".freeze
  s.summary = "Openshift Provider for ManageIQ".freeze

  s.installed_by_version = "2.6.14.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<manageiq-providers-kubernetes>.freeze, ["~> 0.1.0"])
      s.add_development_dependency(%q<codeclimate-test-reporter>.freeze, ["~> 1.0.0"])
      s.add_development_dependency(%q<recursive-open-struct>.freeze, ["~> 1.0.0"])
      s.add_development_dependency(%q<simplecov>.freeze, [">= 0"])
    else
      s.add_dependency(%q<manageiq-providers-kubernetes>.freeze, ["~> 0.1.0"])
      s.add_dependency(%q<codeclimate-test-reporter>.freeze, ["~> 1.0.0"])
      s.add_dependency(%q<recursive-open-struct>.freeze, ["~> 1.0.0"])
      s.add_dependency(%q<simplecov>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<manageiq-providers-kubernetes>.freeze, ["~> 0.1.0"])
    s.add_dependency(%q<codeclimate-test-reporter>.freeze, ["~> 1.0.0"])
    s.add_dependency(%q<recursive-open-struct>.freeze, ["~> 1.0.0"])
    s.add_dependency(%q<simplecov>.freeze, [">= 0"])
  end
end
