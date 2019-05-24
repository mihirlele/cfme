import { connect } from 'react-redux';
import ConversionHostWizardAuthenticationStep from './ConversionHostWizardAuthenticationStep';

import { stepIDs } from '../ConversionHostWizardConstants';

const mapStateToProps = ({ form }) => {
  const locationStepForm = form[stepIDs.locationStep];
  const locationStepValues = locationStepForm && locationStepForm.values;
  const authStepForm = form[stepIDs.authenticationStep];
  const authStepValues = authStepForm && authStepForm.values;
  return {
    selectedProviderType: locationStepValues && locationStepValues.providerType,
    selectedTransformationMethod: authStepValues && authStepValues.transformationMethod
  };
};

const mergeProps = (stateProps, dispatchProps, ownProps) => Object.assign(stateProps, ownProps.data, dispatchProps);

export default connect(
  mapStateToProps,
  {},
  mergeProps
)(ConversionHostWizardAuthenticationStep);
