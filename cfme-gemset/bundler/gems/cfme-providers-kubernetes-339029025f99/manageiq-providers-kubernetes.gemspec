# -*- encoding: utf-8 -*-
# stub: manageiq-providers-kubernetes 0.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "manageiq-providers-kubernetes".freeze
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["ManageIQ Developers".freeze]
  s.date = "2019-05-08"
  s.description = "Kubernetes Provider for ManageIQ".freeze
  s.files = ["app/models/manageiq/providers/kubernetes".freeze, "app/models/manageiq/providers/kubernetes/container_manager".freeze, "app/models/manageiq/providers/kubernetes/container_manager.rb".freeze, "app/models/manageiq/providers/kubernetes/container_manager/container.rb".freeze, "app/models/manageiq/providers/kubernetes/container_manager/container_group.rb".freeze, "app/models/manageiq/providers/kubernetes/container_manager/container_node.rb".freeze, "app/models/manageiq/providers/kubernetes/container_manager/container_template.rb".freeze, "app/models/manageiq/providers/kubernetes/container_manager/container_template_mixin.rb".freeze, "app/models/manageiq/providers/kubernetes/container_manager/entities_mapping.rb".freeze, "app/models/manageiq/providers/kubernetes/container_manager/event_catcher".freeze, "app/models/manageiq/providers/kubernetes/container_manager/event_catcher.rb".freeze, "app/models/manageiq/providers/kubernetes/container_manager/event_catcher/runner.rb".freeze, "app/models/manageiq/providers/kubernetes/container_manager/event_catcher_mixin.rb".freeze, "app/models/manageiq/providers/kubernetes/container_manager/event_parser.rb".freeze, "app/models/manageiq/providers/kubernetes/container_manager/event_parser_mixin.rb".freeze, "app/models/manageiq/providers/kubernetes/container_manager/inventory_collector_mixin.rb".freeze, "app/models/manageiq/providers/kubernetes/container_manager/inventory_collector_worker".freeze, "app/models/manageiq/providers/kubernetes/container_manager/inventory_collector_worker.rb".freeze, "app/models/manageiq/providers/kubernetes/container_manager/inventory_collector_worker/runner.rb".freeze, "app/models/manageiq/providers/kubernetes/container_manager/kubernetes_event_monitor.rb".freeze, "app/models/manageiq/providers/kubernetes/container_manager/metrics_capture".freeze, "app/models/manageiq/providers/kubernetes/container_manager/metrics_capture.rb".freeze, "app/models/manageiq/providers/kubernetes/container_manager/metrics_capture/capture_context_mixin.rb".freeze, "app/models/manageiq/providers/kubernetes/container_manager/metrics_capture/hawkular_capture_context.rb".freeze, "app/models/manageiq/providers/kubernetes/container_manager/metrics_capture/hawkular_client.rb".freeze, "app/models/manageiq/providers/kubernetes/container_manager/metrics_capture/hawkular_client_mixin.rb".freeze, "app/models/manageiq/providers/kubernetes/container_manager/metrics_capture/hawkular_legacy_capture_context.rb".freeze, "app/models/manageiq/providers/kubernetes/container_manager/metrics_capture/prometheus_capture_context.rb".freeze, "app/models/manageiq/providers/kubernetes/container_manager/metrics_capture/prometheus_client.rb".freeze, "app/models/manageiq/providers/kubernetes/container_manager/metrics_capture/prometheus_client_mixin.rb".freeze, "app/models/manageiq/providers/kubernetes/container_manager/metrics_collector_worker".freeze, "app/models/manageiq/providers/kubernetes/container_manager/metrics_collector_worker.rb".freeze, "app/models/manageiq/providers/kubernetes/container_manager/metrics_collector_worker/runner.rb".freeze, "app/models/manageiq/providers/kubernetes/container_manager/options.rb".freeze, "app/models/manageiq/providers/kubernetes/container_manager/refresh_parser.rb".freeze, "app/models/manageiq/providers/kubernetes/container_manager/refresh_worker".freeze, "app/models/manageiq/providers/kubernetes/container_manager/refresh_worker.rb".freeze, "app/models/manageiq/providers/kubernetes/container_manager/refresh_worker/runner.rb".freeze, "app/models/manageiq/providers/kubernetes/container_manager/refresher.rb".freeze, "app/models/manageiq/providers/kubernetes/container_manager/refresher_mixin.rb".freeze, "app/models/manageiq/providers/kubernetes/container_manager/scanning".freeze, "app/models/manageiq/providers/kubernetes/container_manager/scanning.rb".freeze, "app/models/manageiq/providers/kubernetes/container_manager/scanning/job.rb".freeze, "app/models/manageiq/providers/kubernetes/container_manager/service_instance.rb".freeze, "app/models/manageiq/providers/kubernetes/container_manager/service_offering.rb".freeze, "app/models/manageiq/providers/kubernetes/container_manager/service_parameters_set.rb".freeze, "app/models/manageiq/providers/kubernetes/container_manager/streaming_refresh_mixin.rb".freeze, "app/models/manageiq/providers/kubernetes/container_manager/target_collection_mixin.rb".freeze, "app/models/manageiq/providers/kubernetes/container_manager_mixin.rb".freeze, "app/models/manageiq/providers/kubernetes/inventory".freeze, "app/models/manageiq/providers/kubernetes/inventory.rb".freeze, "app/models/manageiq/providers/kubernetes/inventory/collector".freeze, "app/models/manageiq/providers/kubernetes/inventory/collector.rb".freeze, "app/models/manageiq/providers/kubernetes/inventory/collector/container_manager.rb".freeze, "app/models/manageiq/providers/kubernetes/inventory/collector/target_collection.rb".freeze, "app/models/manageiq/providers/kubernetes/inventory/collector/watches.rb".freeze, "app/models/manageiq/providers/kubernetes/inventory/parser".freeze, "app/models/manageiq/providers/kubernetes/inventory/parser.rb".freeze, "app/models/manageiq/providers/kubernetes/inventory/parser/container_manager.rb".freeze, "app/models/manageiq/providers/kubernetes/inventory/parser/watches.rb".freeze, "app/models/manageiq/providers/kubernetes/inventory/persister".freeze, "app/models/manageiq/providers/kubernetes/inventory/persister.rb".freeze, "app/models/manageiq/providers/kubernetes/inventory/persister/container_manager.rb".freeze, "app/models/manageiq/providers/kubernetes/inventory/persister/definitions".freeze, "app/models/manageiq/providers/kubernetes/inventory/persister/definitions/container_collections.rb".freeze, "app/models/manageiq/providers/kubernetes/inventory/persister/target_collection.rb".freeze, "app/models/manageiq/providers/kubernetes/monitoring_manager".freeze, "app/models/manageiq/providers/kubernetes/monitoring_manager.rb".freeze, "app/models/manageiq/providers/kubernetes/monitoring_manager/event_catcher".freeze, "app/models/manageiq/providers/kubernetes/monitoring_manager/event_catcher.rb".freeze, "app/models/manageiq/providers/kubernetes/monitoring_manager/event_catcher/runner.rb".freeze, "app/models/manageiq/providers/kubernetes/monitoring_manager/event_catcher/runner_mixin.rb".freeze, "app/models/manageiq/providers/kubernetes/monitoring_manager/event_catcher/stream.rb".freeze, "app/models/manageiq/providers/kubernetes/monitoring_manager_mixin.rb".freeze, "app/models/manageiq/providers/kubernetes/virtualization_manager_mixin.rb".freeze, "config/initializers/gettext.rb".freeze, "config/settings.yml".freeze, "lib/manageiq-providers-kubernetes.rb".freeze, "lib/manageiq/providers".freeze, "lib/manageiq/providers/kubernetes".freeze, "lib/manageiq/providers/kubernetes.rb".freeze, "lib/manageiq/providers/kubernetes/engine.rb".freeze, "lib/manageiq/providers/kubernetes/version.rb".freeze, "lib/tasks/README.md".freeze, "lib/tasks/kubernetes.rake".freeze, "lib/tasks_private".freeze, "lib/tasks_private/spec.rake".freeze]
  s.homepage = "https://github.com/ManageIQ/manageiq-providers-kubernetes".freeze
  s.licenses = ["Apache-2.0".freeze]
  s.rubygems_version = "2.6.14.1".freeze
  s.summary = "Kubernetes Provider for ManageIQ".freeze

  s.installed_by_version = "2.6.14.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<hawkular-client>.freeze, ["~> 4.1"])
      s.add_runtime_dependency(%q<image-inspector-client>.freeze, ["~> 2.0"])
      s.add_runtime_dependency(%q<kubeclient>.freeze, ["~> 4.0"])
      s.add_runtime_dependency(%q<prometheus-alert-buffer-client>.freeze, ["~> 0.2.0"])
      s.add_runtime_dependency(%q<prometheus-api-client>.freeze, ["~> 0.6"])
      s.add_runtime_dependency(%q<more_core_extensions>.freeze, ["~> 3.6"])
      s.add_development_dependency(%q<codeclimate-test-reporter>.freeze, ["~> 1.0.0"])
      s.add_development_dependency(%q<recursive-open-struct>.freeze, ["~> 1.0.0"])
      s.add_development_dependency(%q<simplecov>.freeze, [">= 0"])
    else
      s.add_dependency(%q<hawkular-client>.freeze, ["~> 4.1"])
      s.add_dependency(%q<image-inspector-client>.freeze, ["~> 2.0"])
      s.add_dependency(%q<kubeclient>.freeze, ["~> 4.0"])
      s.add_dependency(%q<prometheus-alert-buffer-client>.freeze, ["~> 0.2.0"])
      s.add_dependency(%q<prometheus-api-client>.freeze, ["~> 0.6"])
      s.add_dependency(%q<more_core_extensions>.freeze, ["~> 3.6"])
      s.add_dependency(%q<codeclimate-test-reporter>.freeze, ["~> 1.0.0"])
      s.add_dependency(%q<recursive-open-struct>.freeze, ["~> 1.0.0"])
      s.add_dependency(%q<simplecov>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<hawkular-client>.freeze, ["~> 4.1"])
    s.add_dependency(%q<image-inspector-client>.freeze, ["~> 2.0"])
    s.add_dependency(%q<kubeclient>.freeze, ["~> 4.0"])
    s.add_dependency(%q<prometheus-alert-buffer-client>.freeze, ["~> 0.2.0"])
    s.add_dependency(%q<prometheus-api-client>.freeze, ["~> 0.6"])
    s.add_dependency(%q<more_core_extensions>.freeze, ["~> 3.6"])
    s.add_dependency(%q<codeclimate-test-reporter>.freeze, ["~> 1.0.0"])
    s.add_dependency(%q<recursive-open-struct>.freeze, ["~> 1.0.0"])
    s.add_dependency(%q<simplecov>.freeze, [">= 0"])
  end
end
