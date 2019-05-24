import Immutable from 'seamless-immutable';
import commonUtilitiesHelper from '../common/commonUtilitiesHelper';

import {
  FETCH_V2V_PLAN,
  FETCH_V2V_ALL_REQUESTS_WITH_TASKS_FOR_PLAN,
  QUERY_V2V_PLAN_VMS,
  RESET_PLAN_STATE,
  FETCH_V2V_MIGRATION_TASK_LOG,
  DOWNLOAD_LOG_CLICKED,
  DOWNLOAD_LOG_COMPLETED,
  FETCH_V2V_ANSIBLE_PLAYBOOK_TEMPLATE,
  FETCH_V2V_ORCHESTRATION_STACK,
  REMOVE_TASKS_SELECTED_FOR_CANCELLATION,
  UPDATE_TASKS_SELECTED_FOR_CANCELLATION,
  DELETE_ALL_TASKS_SELECTED_FOR_CANCELLATION,
  ADD_TASKS_TO_MARKED_FOR_CANCELLATION,
  ADD_TASK_TO_NOTIFICATION_SENT_LIST,
  FETCH_V2V_REQUEST_TASK,
  FETCH_V2V_CONVERSION_HOST
} from './PlanConstants';
import {
  excludeDownloadDoneTaskId,
  includeDownloadInProgressTaskId,
  getFailedMigrations,
  getSuccessfulMigrations,
  allVMTasksForRequestOfPlan,
  incompleteCancellationTasks,
  removeCancelledTasksFromSelection
} from './helpers';

export const initialState = Immutable({
  isFetchingPlanRequest: false,
  isRejectedPlanRequest: false,
  planRequestPreviouslyFetched: false,
  errorPlanRequest: null,
  planRequestTasks: [],
  planRequestFailed: false,
  planRequestDenied: false,
  isFetchingPlan: false,
  isRejectedPlan: false,
  errorPlan: null,
  plan: {},
  planArchived: false,
  isQueryingVms: false,
  isRejectedVms: false,
  errorVms: null,
  vms: [],
  isFetchingAnsiblePlaybookTemplate: false,
  isRejectedAnsiblePlaybookTemplate: false,
  errorAnsiblePlaybookTemplate: null,
  ansiblePlaybookTemplate: {},
  isFetchingOrchestrationStack: false,
  isRejectedOrchestrationStack: false,
  errorOrchestrationStack: null,
  orchestrationStack: {},
  selectedTasksForCancel: [],
  markedForCancellation: [],
  failedMigrations: [],
  successfulMigrations: [],
  notificationsSentList: [],
  isFetchingRequestTask: false,
  isRejectedRequestTask: false,
  requestTask: {},
  errorRequestTask: null,
  conversionHosts: {}
});

export default (state = initialState, action) => {
  switch (action.type) {
    case `${FETCH_V2V_PLAN}_PENDING`:
      return state.set('isFetchingPlan', true).set('isRejectedPlan', false);
    case `${FETCH_V2V_PLAN}_FULFILLED`:
      return state
        .set('plan', action.payload.data)
        .set('planName', action.payload.data.name)
        .set('planArchived', !!action.payload.data.archived)
        .set('isFetchingPlan', false)
        .set('isRejectedPlan', false)
        .set('errorPlan', null);
    case `${FETCH_V2V_PLAN}_REJECTED`:
      return state
        .set('isFetchingPlan', false)
        .set('isRejectedPlan', true)
        .set('errorPlan', action.payload);

    case `${FETCH_V2V_ALL_REQUESTS_WITH_TASKS_FOR_PLAN}_PENDING`:
      return state.set('isFetchingPlanRequest', true).set('isRejectedPlanRequest', false);
    case `${FETCH_V2V_ALL_REQUESTS_WITH_TASKS_FOR_PLAN}_FULFILLED`:
      if (action.payload.data) {
        const vmTasksForRequestOfPlan = allVMTasksForRequestOfPlan(
          action.payload.data.results,
          state.plan.options.config_info.actions
        );

        const mostRecentRequest = commonUtilitiesHelper.getMostRecentEntityByCreationDate(action.payload.data.results);
        const tasksOfMostRecentRequest = mostRecentRequest.miq_request_tasks;
        const vmsBeingProcessedInCurrentRun = tasksOfMostRecentRequest.map(task => task.source_id);
        const tasksCompletedSuccessfullyInPriorRuns = vmTasksForRequestOfPlan.filter(
          task => vmsBeingProcessedInCurrentRun.indexOf(task.source_id) === -1
        );

        const addTaskToNotificationAlreadySentList = [];
        tasksCompletedSuccessfullyInPriorRuns.forEach(task => {
          if (state.notificationsSentList.indexOf(task.id) === -1) {
            addTaskToNotificationAlreadySentList.push(task.id);
          }
        });

        return state
          .set('notificationsSentList', state.notificationsSentList.concat(addTaskToNotificationAlreadySentList))
          .set('planRequestTasks', vmTasksForRequestOfPlan)
          .set(
            'selectedTasksForCancel',
            incompleteCancellationTasks(
              action.payload.data.results,
              state.plan.options.config_info.actions,
              state.selectedTasksForCancel
            )
          )
          .set('allRequestsWithTasksForPlan', action.payload.data.results)
          .set('planRequestPreviouslyFetched', true)
          .set('planRequestFailed', mostRecentRequest.status === 'Error')
          .set('planRequestDenied', mostRecentRequest.status === 'Denied')
          .set('failedMigrations', getFailedMigrations(vmTasksForRequestOfPlan))
          .set('successfulMigrations', getSuccessfulMigrations(vmTasksForRequestOfPlan))
          .set('isRejectedPlanRequest', false)
          .set('errorPlanRequest', null)
          .set('isFetchingPlanRequest', false);
      }
      return state
        .set('planRequestPreviouslyFetched', true)
        .set('isRejectedPlanRequest', false)
        .set('errorPlanRequest', null)
        .set('isFetchingPlanRequest', false);
    case `${FETCH_V2V_ALL_REQUESTS_WITH_TASKS_FOR_PLAN}_REJECTED`:
      return state
        .set('errorPlanRequest', action.payload)
        .set('isRejectedPlanRequest', true)
        .set('isFetchingPlanRequest', false);

    case `${QUERY_V2V_PLAN_VMS}_PENDING`:
      return state.set('isQueryingVms', true).set('isRejectedVms', false);
    case `${QUERY_V2V_PLAN_VMS}_FULFILLED`:
      return state
        .set('vms', action.payload.data.results)
        .set('isQueryingVms', false)
        .set('isRejectedVms', false)
        .set('errorVms', null);
    case `${QUERY_V2V_PLAN_VMS}_REJECTED`:
      return state
        .set('isQueryingVms', false)
        .set('isRejectedVms', true)
        .set('errorVms', action.payload);

    case RESET_PLAN_STATE:
      return state
        .set('planRequestTasks', [])
        .set('vms', [])
        .set('planRequestPreviouslyFetched', false)
        .set('markedForCancellation', [])
        .set('selectedTasksForCancel', [])
        .set('planRequestFailed', false)
        .set('planRequestDenied', false);

    case `${FETCH_V2V_MIGRATION_TASK_LOG}_PENDING`:
      return state.set('isFetchingMigrationTaskLog', true).set('isRejectedMigrationTaskLog', false);
    case `${FETCH_V2V_MIGRATION_TASK_LOG}_FULFILLED`:
      return state
        .set('isFetchingMigrationTaskLog', false)
        .set('isRejectedMigrationTaskLog', false)
        .set('errorMigrationTaskLog', null);
    case `${FETCH_V2V_MIGRATION_TASK_LOG}_REJECTED`:
      return state
        .set('isFetchingMigrationTaskLog', false)
        .set('isRejectedMigrationTaskLog', true)
        .set('errorMigrationTaskLog', action.payload);

    case `${FETCH_V2V_ANSIBLE_PLAYBOOK_TEMPLATE}_PENDING`:
      return state.set('isFetchingAnsiblePlaybookTemplate', true).set('isRejectedAnsiblePlaybookTemplate', false);
    case `${FETCH_V2V_ANSIBLE_PLAYBOOK_TEMPLATE}_FULFILLED`:
      return state
        .set('ansiblePlaybookTemplate', action.payload.data)
        .set('isFetchingAnsiblePlaybookTemplate', false)
        .set('isRejectedAnsiblePlaybookTemplate', false)
        .set('errorAnsiblePlaybookTemplate', null);
    case `${FETCH_V2V_ANSIBLE_PLAYBOOK_TEMPLATE}_REJECTED`:
      return state
        .set('isFetchingAnsiblePlaybookTemplate', false)
        .set('isRejectedAnsiblePlaybookTemplate', true)
        .set('errorAnsiblePlaybookTemplate', action.payload);

    case `${FETCH_V2V_ORCHESTRATION_STACK}_PENDING`:
      return state.set('isFetchingOrchestrationStack', true).set('isRejectedOrchestrationStack', false);
    case `${FETCH_V2V_ORCHESTRATION_STACK}_FULFILLED`:
      return state
        .set('orchestrationStack', action.payload.data)
        .set('isFetchingOrchestrationStack', false)
        .set('isRejectedOrchestrationStack', false)
        .set('errorOrchestrationStack', null);
    case `${FETCH_V2V_ORCHESTRATION_STACK}_REJECTED`:
      return state
        .set('isFetchingOrchestrationStack', false)
        .set('isRejectedOrchestrationStack', true)
        .set('errorOrchestrationStack', action.payload);

    case DOWNLOAD_LOG_CLICKED:
      return state.set(
        'downloadLogInProgressTaskIds',
        includeDownloadInProgressTaskId(state.downloadLogInProgressTaskIds, action.payload)
      );
    case DOWNLOAD_LOG_COMPLETED:
      return state.set(
        'downloadLogInProgressTaskIds',
        excludeDownloadDoneTaskId(state.downloadLogInProgressTaskIds, action.payload)
      );

    case REMOVE_TASKS_SELECTED_FOR_CANCELLATION:
      return state.set(
        'selectedTasksForCancel',
        removeCancelledTasksFromSelection(state.selectedTasksForCancel, action.payload)
      );

    case ADD_TASKS_TO_MARKED_FOR_CANCELLATION:
      return state.set('markedForCancellation', state.markedForCancellation.concat(action.payload));

    case UPDATE_TASKS_SELECTED_FOR_CANCELLATION:
      return state.set('selectedTasksForCancel', action.payload);

    case DELETE_ALL_TASKS_SELECTED_FOR_CANCELLATION:
      return state.set('selectedTasksForCancel', []);

    case ADD_TASK_TO_NOTIFICATION_SENT_LIST:
      return state.set('notificationsSentList', state.notificationsSentList.concat(action.payload));

    case `${FETCH_V2V_REQUEST_TASK}_PENDING`:
      return state.set('isFetchingRequestTask', false).set('isRejectedRequestTask', false);
    case `${FETCH_V2V_REQUEST_TASK}_FULFILLED`:
      return state
        .set('requestTask', action.payload.data)
        .set('isFetchingRequestTask', false)
        .set('isRejectedRequestTask', false)
        .set('errorRequestTask', null);
    case `${FETCH_V2V_REQUEST_TASK}_REJECTED`:
      return state
        .set('errorRequestTask', action.payload)
        .set('isRejectedRequestTask', true)
        .set('isFetchingRequestTask', false);

    case FETCH_V2V_CONVERSION_HOST:
      return state.set('conversionHosts', {
        ...state.conversionHosts,
        [action.payload.id]: action.payload.conversion_host
      });

    default:
      return state;
  }
};
