class ManageIQ::Providers::Openshift::ContainerManager::InventoryCollectorWorker::Runner < ManageIQ::Providers::BaseManager::InventoryCollectorWorker::Runner
  include ManageIQ::Providers::Kubernetes::ContainerManager::InventoryCollectorMixin
end
