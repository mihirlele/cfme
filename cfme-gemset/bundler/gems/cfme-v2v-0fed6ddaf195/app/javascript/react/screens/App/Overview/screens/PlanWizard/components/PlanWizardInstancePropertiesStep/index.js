import { connect } from 'react-redux';

import PlanWizardInstancePropertiesStep from './PlanWizardInstancePropertiesStep';
import * as PlanWizardInstancePropertiesStepActions from './PlanWizardInstancePropertiesStepActions';
import reducer from './PlanWizardInstancePropertiesStepReducer';
import { getVMStepSelectedVms } from '../PlanWizardAdvancedOptionsStep/helpers';
import { findEditingPlan } from '../../PlanWizardSelectors';

export const reducers = { planWizardInstancePropertiesStep: reducer };

const mapStateToProps = (
  {
    overview: { transformationMappings, transformationPlans, editingPlanId },
    planWizardInstancePropertiesStep,
    planWizardVMStep,
    form: {
      planWizardGeneralStep: {
        values: { vm_choice_radio, infrastructure_mapping }
      },
      planWizardVMStep: {
        values: { selectedVms }
      },
      planWizardInstancePropertiesStep: instancePropertiesStepForm
    }
  },
  ownProps
) => {
  const editingPlan = findEditingPlan(transformationPlans, editingPlanId);
  const allVms = [...planWizardVMStep.valid_vms, ...planWizardVMStep.invalid_vms, ...planWizardVMStep.conflict_vms];
  const selectedMapping =
    transformationMappings &&
    infrastructure_mapping &&
    transformationMappings.find(mapping => mapping.id === infrastructure_mapping);
  return {
    ...planWizardInstancePropertiesStep,
    ...ownProps.data,
    instancePropertiesStepForm,
    vmStepSelectedVms: getVMStepSelectedVms(allVms, selectedVms).map(vm => ({
      ...vm,
      osp_security_group: {},
      osp_flavor: {}
    })),
    selectedMapping,
    editingPlan,
    shouldPrefillForEditing:
      editingPlan &&
      editingPlan.transformation_mapping &&
      editingPlan.transformation_mapping.id === infrastructure_mapping
  };
};

const mergeProps = (stateProps, dispatchProps, ownProps) => ({
  ...stateProps,
  ...ownProps.data,
  ...dispatchProps
});

export default connect(
  mapStateToProps,
  PlanWizardInstancePropertiesStepActions,
  mergeProps
)(PlanWizardInstancePropertiesStep);
