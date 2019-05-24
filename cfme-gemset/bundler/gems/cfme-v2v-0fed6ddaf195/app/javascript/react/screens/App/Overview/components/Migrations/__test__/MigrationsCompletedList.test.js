import React from 'react';
import Immutable from 'seamless-immutable';
import { shallow, mount } from 'enzyme';

import { transformationPlans } from '../../../overview.transformationPlans.fixtures';
import { allRequestsWithTasks } from '../../../overview.requestWithTasks.fixtures';
import MigrationsCompletedList from '../MigrationsCompletedList';

const [, , , finishedPlanOne, finishedPlanTwo] = transformationPlans.resources;
const finishedTransformationPlans = [
  Immutable({ ...finishedPlanOne, infraMappingName: 'Infrastructure Mapping' }),
  Immutable({ ...finishedPlanTwo, infraMappingName: 'Infrastructure Mapping' })
];
const { results: requestsWithTasks } = allRequestsWithTasks;

describe('when displaying archived migration plans', () => {
  test('each list item renders an actions node', () => {
    const redirectTo = jest.fn();
    const wrapper = shallow(
      <MigrationsCompletedList
        finishedTransformationPlans={Immutable.asMutable(finishedTransformationPlans, { deep: true })}
        allRequestsWithTasks={requestsWithTasks}
        redirectTo={redirectTo}
        archived
      />
    );

    wrapper.find('ListViewItem').forEach(item => {
      expect(item.prop('actions')).toBeTruthy();
    });
  });

  test('each list item does not render an Archive menu item', () => {
    const redirectTo = jest.fn();
    const wrapper = shallow(
      <MigrationsCompletedList
        finishedTransformationPlans={Immutable.asMutable(finishedTransformationPlans, { deep: true })}
        allRequestsWithTasks={requestsWithTasks}
        redirectTo={redirectTo}
        archived
      />
    );

    wrapper.find('ListViewItem').forEach(item => {
      const archiveButton = item.find('a').filterWhere(link => link.text() === 'Archive plan');
      expect(archiveButton).toHaveLength(0);
    });
  });
});

describe('when displaying active (not archived) migration plans', () => {
  let redirectTo;
  let retryClick;
  let showConfirmModalAction;
  let hideConfirmModalAction;
  let wrapper;
  beforeEach(() => {
    redirectTo = jest.fn();
    retryClick = jest.fn();
    showConfirmModalAction = jest.fn();
    hideConfirmModalAction = jest.fn();
    wrapper = mount(
      <MigrationsCompletedList
        finishedTransformationPlans={Immutable.asMutable(finishedTransformationPlans, { deep: true })}
        allRequestsWithTasks={requestsWithTasks}
        retryClick={retryClick}
        redirectTo={redirectTo}
        showConfirmModalAction={showConfirmModalAction}
        hideConfirmModalAction={hideConfirmModalAction}
      />
    );
  });

  test('each list item renders an actions node', () => {
    wrapper.find('ListViewItem').forEach(item => {
      expect(item.prop('actions')).toBeTruthy();
    });
  });

  test('clicking the archive button launches the confirmation modal', () => {
    wrapper.find('ListViewItem').forEach(item => {
      const archiveButton = item.find('a').filterWhere(link => link.text() === 'Archive plan');

      archiveButton.simulate('click');

      expect(showConfirmModalAction).toHaveBeenCalled();
    });
  });
});
