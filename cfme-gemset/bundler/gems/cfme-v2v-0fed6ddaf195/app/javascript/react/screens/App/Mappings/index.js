import { connect } from 'react-redux';

import Mappings from './Mappings';
import * as MappingsActions from './MappingsActions';
import * as RouterActions from '../../../../redux/actions/routerActions';
import * as ProvidersActions from '../../../../redux/common/providers/providersActions';
import reducer from './MappingsReducer';

import {
  activeTransformationPlansFilter,
  finishedWithErrorTransformationPlansFilter,
  notStartedTransformationPlansFilter
} from '../Overview/OverviewSelectors';

export const reducers = { mappings: reducer, form: {} };

const mapStateToProps = (
  {
    mappings,
    overview: { archivedTransformationPlans, transformationPlans, planId },
    providers: { hasSufficientProviders, isRejectedProviders, isFetchingProviders }
  },
  ownProps
) => ({
  ...mappings,
  ...ownProps.data,
  archivedTransformationPlans,
  transformationPlans,
  hasSufficientProviders,
  isRejectedProviders,
  isFetchingProviders,
  activeTransformationPlans: activeTransformationPlansFilter(transformationPlans, planId),
  finishedWithErrorTransformationPlans: finishedWithErrorTransformationPlansFilter(transformationPlans),
  notStartedTransformationPlans: notStartedTransformationPlansFilter(transformationPlans)
});

const mergeProps = (stateProps, dispatchProps, ownProps) => ({
  ...stateProps,
  ...ownProps.data,
  ...dispatchProps
});

export default connect(
  mapStateToProps,
  { ...MappingsActions, ...RouterActions, ...ProvidersActions },
  mergeProps
)(Mappings);
