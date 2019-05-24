import numeral from 'numeral';

import { STATUS_MESSAGE_KEYS, V2V_MIGRATION_STATUS_MESSAGES } from './PlanConstants';
import { IsoElapsedTime } from '../../../../components/dates/IsoElapsedTime';
import getMostRecentVMTasksFromRequests from '../Overview/components/Migrations/helpers/getMostRecentVMTasksFromRequests';

const taskCompletedSuccessfully = task => task.state === 'finished' && task.status === 'Ok';

const taskCompletedUnsuccessfully = task => task.state === 'finished' && task.status !== 'Ok';

const processVMTasks = vmTasks => {
  const tasks = [];
  vmTasks.forEach(task => {
    const taskDetails = {
      id: task.id,
      message: V2V_MIGRATION_STATUS_MESSAGES[task.message] || __('VM migrations stalled'),
      delivered_on: new Date(task.options.delivered_on),
      updated_on: new Date(task.updated_on),
      completed:
        task.message === STATUS_MESSAGE_KEYS.VM_TRANSFORMATIONS_COMPLETED ||
        task.message === STATUS_MESSAGE_KEYS.VM_TRANSFORMATIONS_FAILED ||
        task.message === STATUS_MESSAGE_KEYS.FAILED ||
        (!V2V_MIGRATION_STATUS_MESSAGES[task.message] && task.state === 'finished'),
      state: task.state,
      status: task.status,
      options: {},
      cancelation_status: task.cancelation_status,
      source_id: task.source_id,
      log_available: task.options.virtv2v_wrapper && task.options.virtv2v_wrapper.v2v_log.length > 0
    };

    if (task.options.playbooks) {
      taskDetails.options.prePlaybookRunning =
        task.options.playbooks.pre && task.options.playbooks.pre.job_state === 'active';
      taskDetails.options.postPlaybookRunning =
        task.options.playbooks.post && task.options.playbooks.post.job_state === 'active';
      taskDetails.options.prePlaybookComplete =
        task.options.playbooks.pre && task.options.playbooks.pre.job_state === 'finished';
      taskDetails.options.postPlaybookComplete =
        task.options.playbooks.post && task.options.playbooks.post.job_state === 'finished';
      taskDetails.options.playbooks = task.options.playbooks;
    }

    taskDetails.options.progress = task.options.progress;
    taskDetails.options.virtv2v_wrapper = task.options.virtv2v_wrapper;

    if (!task.diskSpaceCompletedGb) {
      taskDetails.diskSpaceCompletedGb = '0';
    }

    if (!task.percentComplete) {
      taskDetails.percentComplete = 0;
    }

    if (!task.totalDiskSpaceGb) {
      taskDetails.totalDiskSpaceGb = '100%';
    }

    const grepVMName = task.description.match(/\[(.*?)\]/);

    if (grepVMName) {
      [taskDetails.descriptionPrefix, taskDetails.vmName] = grepVMName;
    }

    const startDateTime = taskDetails.delivered_on;
    const lastUpdateDateTime = taskDetails.updated_on;
    taskDetails.startDateTime = startDateTime;
    taskDetails.lastUpdateDateTime = lastUpdateDateTime;

    taskDetails.elapsedTime = IsoElapsedTime(new Date(startDateTime), new Date(lastUpdateDateTime));

    if (taskDetails.completed) {
      taskDetails.completedSuccessfully =
        (task.options.progress && task.options.progress.current_description === 'Virtual machine migrated') ||
        (task.options.progress && task.options.progress.current_description === 'Mark source as migrated');
    }
    if (task.options && task.options.virtv2v_disks && task.options.virtv2v_disks.length) {
      taskDetails.totalDiskSpace = task.options.virtv2v_disks.reduce((a, b) => a + b.size, 0);
      taskDetails.totalDiskSpaceGb = numeral(taskDetails.totalDiskSpace).format('0.00b');

      const percentComplete =
        task.options.virtv2v_disks.reduce((a, b) => a + b.percent, 0) / (100 * task.options.virtv2v_disks.length);

      taskDetails.diskSpaceCompleted = percentComplete * taskDetails.totalDiskSpace;
      taskDetails.diskSpaceCompletedGb = numeral(taskDetails.diskSpaceCompleted).format('0.00b');
      taskDetails.percentComplete = Math.round(percentComplete * 100);
    }
    tasks.push(taskDetails);
  });
  return tasks;
};

export const removeCancelledTasksFromSelection = (allSelectedTasksForCancel, alreadyCancelledTasks) =>
  allSelectedTasksForCancel.filter(selectedTask =>
    alreadyCancelledTasks.every(cancelledTask => selectedTask.id !== cancelledTask.id)
  );

export const excludeDownloadDoneTaskId = (allDownloadLogInProgressTaskIds, taskId) =>
  allDownloadLogInProgressTaskIds.filter(element => element !== taskId);

export const includeDownloadInProgressTaskId = (allDownloadLogInProgressTaskIds, taskId) =>
  allDownloadLogInProgressTaskIds ? allDownloadLogInProgressTaskIds.concat(taskId) : [taskId];

export const getFailedMigrations = vmTasks => vmTasks.filter(task => taskCompletedUnsuccessfully(task));

export const getSuccessfulMigrations = vmTasks => vmTasks.filter(task => taskCompletedSuccessfully(task));

export const allVMTasksForRequestOfPlan = (requestWithTasks, actions) => {
  const tasksOfPlan = getMostRecentVMTasksFromRequests(requestWithTasks, actions);
  return processVMTasks(tasksOfPlan);
};

export const incompleteCancellationTasks = (requestWithTasks, actions, tasksForCancel) => {
  const tasksOfPlan = getMostRecentVMTasksFromRequests(requestWithTasks, actions);
  const completedTasksOfPlan = tasksOfPlan.filter(task => task.state === 'finished');
  return removeCancelledTasksFromSelection(tasksForCancel, completedTasksOfPlan);
};
