import { groupClusterTransformationItemsByDestinationId } from '../../../../helpers';

export const targetClusterWithExtendedData = targetCluster => ({
  ...targetCluster,
  text: targetCluster.name,
  state: {
    expanded: true
  },
  selectable: true,
  selected: false
});

export const sourceClusterWithExtendedData = sourceCluster => ({
  ...sourceCluster,
  text: sourceCluster.name,
  icon: 'fa fa-file-o'
});

export const updateMapping = (clustersStepMapping, targetClusterToAddTo, sourceClustersToAdd) => {
  const { nodes: sourceClusters, ...targetCluster } = clustersStepMapping;

  if (targetCluster.id === targetClusterToAddTo.id) {
    return {
      ...targetCluster,
      nodes: [
        ...sourceClusters,
        ...sourceClustersToAdd.map(sourceCluster => sourceClusterWithExtendedData(sourceCluster))
      ]
    };
  }
  return clustersStepMapping;
};

export const createNewMapping = (targetCluster, sourceClusters) => ({
  ...targetClusterWithExtendedData(targetCluster),
  nodes: sourceClusters.map(sourceCluster => sourceClusterWithExtendedData(sourceCluster))
});

export const createClusterMappings = (transformationItems, targetClusters, sourceClusters) => {
  const mappings = groupClusterTransformationItemsByDestinationId(transformationItems);

  if (targetClusters.length && sourceClusters.length) {
    return Object.keys(mappings).map(key => {
      const target = targetClusters && targetClusters.find(cluster => cluster.id === key);
      const sources = sourceClusters && sourceClusters.filter(cluster => mappings[key].some(id => id === cluster.id));

      return createNewMapping(target, sources);
    });
  }
  return [];
};

export const providerHasSshKeyPair = (target, providers) => {
  const provider = providers.find(prov => prov.id === target.ems_id);

  return (
    provider.authentications &&
    provider.authentications.some(authentication => authentication.authtype === 'ssh_keypair')
  );
};
