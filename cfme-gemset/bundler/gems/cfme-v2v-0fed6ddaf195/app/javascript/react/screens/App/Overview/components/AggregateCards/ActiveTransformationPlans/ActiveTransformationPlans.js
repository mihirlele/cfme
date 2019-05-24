import React from 'react';
import PropTypes from 'prop-types';
import cx from 'classnames';
import {
  Icon,
  Card,
  AggregateStatusCount,
  AggregateStatusNotifications,
  AggregateStatusNotification,
  Spinner
} from 'patternfly-react';

import getMostRecentRequest from '../../../../common/getMostRecentRequest';
import { PLAN_JOB_STATUS } from '../../../../../../../data/models/plans';
import { MIGRATIONS_FILTERS } from '../../../OverviewConstants';

const ActiveTransformationPlans = ({
  activePlans,
  allRequestsWithTasks,
  reloadCard,
  loading,
  migrationsFilter,
  setMigrationsFilterAction
}) => {
  const countDescription =
    activePlans.length === 1 ? __('Migration Plan In Progress') : __('Migration Plans In Progress');
  const active = migrationsFilter === MIGRATIONS_FILTERS.inProgress;
  const erroredPlans = activePlans.filter(plan => {
    if (allRequestsWithTasks && allRequestsWithTasks.length > 0) {
      const requestsOfAssociatedPlan = allRequestsWithTasks.filter(request => request.source_id === plan.id);
      const mostRecentRequest = requestsOfAssociatedPlan.length > 0 && getMostRecentRequest(requestsOfAssociatedPlan);
      return (
        mostRecentRequest &&
        mostRecentRequest.miq_request_tasks.some(task => {
          if (task.options && task.options.playbooks) {
            const { playbooks } = task.options;
            if (playbooks.pre && playbooks.pre.job_status === PLAN_JOB_STATUS.ERROR) {
              return true;
            }
            if (playbooks.post && playbooks.post.job_status === PLAN_JOB_STATUS.ERROR) {
              return true;
            }
          }
          return task.state === 'finished' && task.status === 'Error';
        })
      );
    }
    return [];
  });

  let erroredPlansLen = erroredPlans.length;
  if (erroredPlansLen > 0 && reloadCard) {
    erroredPlansLen -= 1;
  }

  const classes = cx('overview-aggregate-card', { 'is-loading': loading, active });

  return (
    <Card
      className={classes}
      accented
      aggregated
      matchHeight
      onClick={() => setMigrationsFilterAction(MIGRATIONS_FILTERS.inProgress)}
    >
      <Spinner loading={loading}>
        <Card.Title>
          <AggregateStatusCount>{activePlans.length}</AggregateStatusCount> {countDescription}
        </Card.Title>
        {activePlans.length > 0 && (
          <Card.Body className="overview-aggregate-card--body">
            <AggregateStatusNotifications>
              <AggregateStatusNotification>
                <Icon type="pf" name={erroredPlansLen > 0 ? 'error-circle-o' : 'ok'} />{' '}
                {erroredPlansLen > 0 && erroredPlansLen}
              </AggregateStatusNotification>
            </AggregateStatusNotifications>
          </Card.Body>
        )}
      </Spinner>
    </Card>
  );
};

ActiveTransformationPlans.propTypes = {
  activePlans: PropTypes.array,
  allRequestsWithTasks: PropTypes.array,
  reloadCard: PropTypes.bool,
  loading: PropTypes.bool,
  migrationsFilter: PropTypes.string,
  setMigrationsFilterAction: PropTypes.func
};

export default ActiveTransformationPlans;
