export const MIGRATIONS_NOT_STARTED_SORT_FIELDS = [
  { id: 'name', title: __('Name'), isNumeric: false },
  {
    id: 'infraMappingName',
    title: __('Infrastructure Mapping'),
    isNumeric: false
  },
  {
    id: 'configVmLength',
    title: __('Number of VMs'),
    isNumeric: true
  },
  { id: 'scheduleTime', title: __('Scheduled Time'), isNumeric: true }
];

export const MIGRATIONS_COMPLETED_SORT_FIELDS = [
  { id: 'name', title: __('Name'), isNumeric: false },
  { id: 'status', title: __('Status'), isNumeric: false }
];

export const MIGRATIONS_ARCHIVED_SORT_FIELDS = [{ id: 'name', title: __('Name'), isNumeric: false }];

export const MIGRATIONS_FILTER_TYPES = [
  {
    id: 'name',
    title: __('Name'),
    placeholder: __('Filter by Name'),
    filterType: 'text'
  },
  {
    id: 'description',
    title: __('Description'),
    placeholder: __('Filter by Description'),
    filterType: 'text'
  },
  {
    id: 'infraMappingName',
    title: __('Infrastructure Mapping'),
    placeholder: __('Filter by Mapping'),
    filterType: 'text'
  }
];
