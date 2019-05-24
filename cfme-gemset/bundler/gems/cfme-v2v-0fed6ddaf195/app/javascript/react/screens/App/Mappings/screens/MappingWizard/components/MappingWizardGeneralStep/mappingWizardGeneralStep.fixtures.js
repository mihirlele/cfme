import Immutable from 'seamless-immutable';

export const conversionHosts = Immutable({
  name: 'conversion_hosts',
  count: 3,
  subcount: 3,
  pages: 1,
  resources: [
    {
      href: 'http://0.0.0.0:8080/api/conversion_hosts/42000000000001',
      id: '42000000000001',
      name: 'conversion_host_1',
      address: null,
      type: null,
      resource_type: 'VmOrTemplate',
      resource_id: '42000000000110',
      version: null,
      max_concurrent_tasks: null,
      vddk_transport_supported: true,
      ssh_transport_supported: null,
      created_at: '2018-11-06T02:07:08Z',
      updated_at: '2018-11-06T02:07:08Z',
      concurrent_transformation_limit: null,
      cpu_limit: null,
      memory_limit: null,
      network_limit: null,
      blockio_limit: null,
      resource: {
        id: '42000000000110',
        vendor: 'openstack',
        format: null,
        version: null,
        name: 'conversion_host_1',
        description: null,
        location: 'unknown',
        config_xml: null,
        autostart: null,
        host_id: null,
        last_sync_on: null,
        created_on: '2018-11-06T02:04:54Z',
        updated_on: '2018-11-06T02:04:54Z',
        storage_id: null,
        guid: 'd8aef775-81c1-4ec0-b629-511bcfee98cb',
        ems_id: '42000000000004',
        last_scan_on: null,
        last_scan_attempt_on: null,
        uid_ems: '15332bb4-74f5-496b-83cb-837b3f10010b',
        retires_on: null,
        retired: null,
        boot_time: null,
        tools_status: null,
        standby_action: null,
        power_state: 'on',
        state_changed_on: '2018-11-06T02:04:54Z',
        previous_state: null,
        connection_state: 'connected',
        last_perf_capture_on: null,
        registered: null,
        busy: null,
        smart: null,
        memory_reserve: null,
        memory_reserve_expand: null,
        memory_limit: null,
        memory_shares: null,
        memory_shares_level: null,
        cpu_reserve: null,
        cpu_reserve_expand: null,
        cpu_limit: null,
        cpu_shares: null,
        cpu_shares_level: null,
        cpu_affinity: null,
        ems_created_on: null,
        template: false,
        evm_owner_id: null,
        ems_ref_obj: null,
        miq_group_id: '42000000000001',
        linked_clone: null,
        fault_tolerance: null,
        type: 'ManageIQ::Providers::Openstack::CloudManager::Vm',
        ems_ref: '15332bb4-74f5-496b-83cb-837b3f10010b',
        ems_cluster_id: null,
        retirement_warn: null,
        retirement_last_warn: null,
        vnc_port: null,
        flavor_id: '42000000000005',
        availability_zone_id: '42000000000001',
        cloud: true,
        retirement_state: null,
        cloud_network_id: null,
        cloud_subnet_id: null,
        cloud_tenant_id: '42000000000001',
        raw_power_state: 'ACTIVE',
        publicly_available: null,
        orchestration_stack_id: null,
        retirement_requester: null,
        tenant_id: '42000000000001',
        resource_group_id: null,
        deprecated: null,
        storage_profile_id: null,
        cpu_hot_add_enabled: null,
        cpu_hot_remove_enabled: null,
        memory_hot_add_enabled: null,
        memory_hot_add_limit: null,
        memory_hot_add_increment: null,
        hostname: null
      }
    },
    {
      href: 'http://0.0.0.0:8080/api/conversion_hosts/42000000000002',
      id: '42000000000002',
      name: 'conversion_host_2',
      address: null,
      type: null,
      resource_type: 'VmOrTemplate',
      resource_id: '42000000000109',
      version: null,
      max_concurrent_tasks: null,
      vddk_transport_supported: true,
      ssh_transport_supported: null,
      created_at: '2018-11-06T02:07:19Z',
      updated_at: '2018-11-06T02:07:19Z',
      concurrent_transformation_limit: null,
      cpu_limit: null,
      memory_limit: null,
      network_limit: null,
      blockio_limit: null,
      resource: {
        id: '42000000000109',
        vendor: 'openstack',
        format: null,
        version: null,
        name: 'conversion_host_2',
        description: null,
        location: 'unknown',
        config_xml: null,
        autostart: null,
        host_id: null,
        last_sync_on: null,
        created_on: '2018-11-06T02:04:54Z',
        updated_on: '2018-11-06T02:04:54Z',
        storage_id: null,
        guid: '0a8fbcd1-ab05-4468-a635-48c964e176b6',
        ems_id: '42000000000004',
        last_scan_on: null,
        last_scan_attempt_on: null,
        uid_ems: 'd43ce336-5ed3-4d02-8434-5edd70450a32',
        retires_on: null,
        retired: null,
        boot_time: null,
        tools_status: null,
        standby_action: null,
        power_state: 'on',
        state_changed_on: '2018-11-06T02:04:54Z',
        previous_state: null,
        connection_state: 'connected',
        last_perf_capture_on: null,
        registered: null,
        busy: null,
        smart: null,
        memory_reserve: null,
        memory_reserve_expand: null,
        memory_limit: null,
        memory_shares: null,
        memory_shares_level: null,
        cpu_reserve: null,
        cpu_reserve_expand: null,
        cpu_limit: null,
        cpu_shares: null,
        cpu_shares_level: null,
        cpu_affinity: null,
        ems_created_on: null,
        template: false,
        evm_owner_id: null,
        ems_ref_obj: null,
        miq_group_id: '42000000000001',
        linked_clone: null,
        fault_tolerance: null,
        type: 'ManageIQ::Providers::Openstack::CloudManager::Vm',
        ems_ref: 'd43ce336-5ed3-4d02-8434-5edd70450a32',
        ems_cluster_id: null,
        retirement_warn: null,
        retirement_last_warn: null,
        vnc_port: null,
        flavor_id: '42000000000005',
        availability_zone_id: '42000000000001',
        cloud: true,
        retirement_state: null,
        cloud_network_id: null,
        cloud_subnet_id: null,
        cloud_tenant_id: '42000000000001',
        raw_power_state: 'ACTIVE',
        publicly_available: null,
        orchestration_stack_id: null,
        retirement_requester: null,
        tenant_id: '42000000000001',
        resource_group_id: null,
        deprecated: null,
        storage_profile_id: null,
        cpu_hot_add_enabled: null,
        cpu_hot_remove_enabled: null,
        memory_hot_add_enabled: null,
        memory_hot_add_limit: null,
        memory_hot_add_increment: null,
        hostname: null
      }
    },
    {
      href: 'http://0.0.0.0:8080/api/conversion_hosts/42000000000003',
      id: '42000000000003',
      name: 'conversion_host_jerryk',
      address: null,
      type: null,
      resource_type: 'VmOrTemplate',
      resource_id: '42000000000174',
      version: null,
      max_concurrent_tasks: null,
      vddk_transport_supported: null,
      ssh_transport_supported: null,
      created_at: '2018-11-08T21:08:05Z',
      updated_at: '2018-11-08T21:08:05Z',
      concurrent_transformation_limit: null,
      cpu_limit: null,
      memory_limit: null,
      network_limit: null,
      blockio_limit: null,
      resource: {
        id: '42000000000174',
        vendor: 'openstack',
        format: null,
        version: null,
        name: 'conversion_host_jerryk',
        description: null,
        location: 'unknown',
        config_xml: null,
        autostart: null,
        host_id: null,
        last_sync_on: null,
        created_on: '2018-11-08T15:36:37Z',
        updated_on: '2018-11-08T15:36:37Z',
        storage_id: null,
        guid: 'e8f91062-cb3c-41fa-95f6-5551d21976d8',
        ems_id: '42000000000004',
        last_scan_on: null,
        last_scan_attempt_on: null,
        uid_ems: 'bd4a7620-88ac-4457-bcee-d1a0736dacd8',
        retires_on: null,
        retired: null,
        boot_time: null,
        tools_status: null,
        standby_action: null,
        power_state: 'on',
        state_changed_on: '2018-11-08T15:36:37Z',
        previous_state: null,
        connection_state: 'connected',
        last_perf_capture_on: null,
        registered: null,
        busy: null,
        smart: null,
        memory_reserve: null,
        memory_reserve_expand: null,
        memory_limit: null,
        memory_shares: null,
        memory_shares_level: null,
        cpu_reserve: null,
        cpu_reserve_expand: null,
        cpu_limit: null,
        cpu_shares: null,
        cpu_shares_level: null,
        cpu_affinity: null,
        ems_created_on: null,
        template: false,
        evm_owner_id: null,
        ems_ref_obj: null,
        miq_group_id: '42000000000001',
        linked_clone: null,
        fault_tolerance: null,
        type: 'ManageIQ::Providers::Openstack::CloudManager::Vm',
        ems_ref: 'bd4a7620-88ac-4457-bcee-d1a0736dacd8',
        ems_cluster_id: null,
        retirement_warn: null,
        retirement_last_warn: null,
        vnc_port: null,
        flavor_id: '42000000000005',
        availability_zone_id: '42000000000001',
        cloud: true,
        retirement_state: null,
        cloud_network_id: null,
        cloud_subnet_id: null,
        cloud_tenant_id: '42000000000007',
        raw_power_state: 'ACTIVE',
        publicly_available: null,
        orchestration_stack_id: null,
        retirement_requester: null,
        tenant_id: '42000000000001',
        resource_group_id: null,
        deprecated: null,
        storage_profile_id: null,
        cpu_hot_add_enabled: null,
        cpu_hot_remove_enabled: null,
        memory_hot_add_enabled: null,
        memory_hot_add_limit: null,
        memory_hot_add_increment: null,
        hostname: null
      }
    }
  ]
});

export const requestConversionHostsData = {
  method: 'GET',
  fetchConversionHostsUrl: '/api/dummyConversionHosts',
  response: { data: conversionHosts }
};
