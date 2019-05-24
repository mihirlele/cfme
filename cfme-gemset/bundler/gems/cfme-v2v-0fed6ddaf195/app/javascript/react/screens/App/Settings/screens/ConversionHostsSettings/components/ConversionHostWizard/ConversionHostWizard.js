import React from 'react';
import PropTypes from 'prop-types';
import { Wizard, Button, Icon } from 'patternfly-react';

import { stepIDs } from './ConversionHostWizardConstants';
import ConversionHostWizardBody from './ConversionHostWizardBody';
import ConversionHostWizardLocationStep from './ConversionHostWizardLocationStep';
import ConversionHostWizardHostsStep from './ConversionHostWizardHostsStep';
import ConversionHostWizardAuthenticationStep from './ConversionHostWizardAuthenticationStep';
import ConversionHostWizardResultsStep from './ConversionHostWizardResultsStep';

class ConversionHostWizard extends React.Component {
  state = { activeStepIndex: 0 };

  getWizardSteps = () => [
    {
      id: stepIDs.locationStep,
      title: __('Location'),
      render: () => <ConversionHostWizardLocationStep />
    },
    {
      id: stepIDs.hostsStep,
      title: __('Host(s)'),
      render: () => <ConversionHostWizardHostsStep />
    },
    {
      id: stepIDs.authenticationStep,
      title: __('Authentication'),
      render: () => <ConversionHostWizardAuthenticationStep />
    },
    {
      id: stepIDs.resultsStep,
      title: __('Results'),
      render: () => <ConversionHostWizardResultsStep />
    }
  ];

  getActiveWizardStep = () => {
    const { activeStepIndex } = this.state;
    return this.getWizardSteps()[activeStepIndex];
  };

  prevStep = () => {
    const { activeStepIndex } = this.state;
    this.goToStep(Math.max(activeStepIndex - 1, 0));
  };

  nextStep = () => {
    const { activeStepIndex } = this.state;
    const wizardSteps = this.getWizardSteps();
    this.goToStep(Math.min(activeStepIndex + 1, wizardSteps.length - 1));
  };

  goToStep = activeStepIndex => {
    this.setState({ activeStepIndex });
  };

  goToStepId = id => {
    const targetStepIndex = this.getWizardSteps().findIndex(step => step.id === id);
    if (targetStepIndex) {
      this.goToStep(targetStepIndex);
    }
  };

  render() {
    const {
      conversionHostWizardVisible,
      hideConversionHostWizardAction,
      conversionHostWizardExitedAction,
      isPostingConversionHosts,
      forms
    } = this.props;
    const { activeStepIndex } = this.state;
    const activeStepNumber = (activeStepIndex + 1).toString();

    const wizardSteps = this.getWizardSteps();
    const onFirstStep = activeStepIndex === 0;
    const onFinalStep = activeStepIndex === wizardSteps.length - 1;

    const activeStep = this.getActiveWizardStep();
    const activeStepForm = !onFinalStep && forms[activeStep.id];

    const disableNextStep =
      (activeStepForm && (!!activeStepForm.syncErrors || !!activeStepForm.asyncErrors)) ||
      (onFinalStep && isPostingConversionHosts);

    return (
      <Wizard
        show={conversionHostWizardVisible}
        onClose={hideConversionHostWizardAction}
        onExited={conversionHostWizardExitedAction}
        backdrop="static"
      >
        <Wizard.Header onClose={hideConversionHostWizardAction} title={__('Configure Conversion Host')} />
        <Wizard.Body>
          <ConversionHostWizardBody
            wizardSteps={wizardSteps}
            loaded
            activeStepIndex={activeStepIndex}
            activeStep={activeStepNumber}
            goToStep={this.goToStep}
            disableNextStep={disableNextStep}
          />
        </Wizard.Body>
        <Wizard.Footer className="wizard-pf-footer">
          <Button
            bsStyle="default"
            className="btn-cancel"
            onClick={hideConversionHostWizardAction}
            disabled={onFinalStep}
          >
            {__('Cancel')}
          </Button>
          <Button bsStyle="default" onClick={this.prevStep} disabled={onFirstStep || onFinalStep}>
            <Icon type="fa" name="angle-left" />
            {__('Back')}
          </Button>
          <Button
            bsStyle="primary"
            onClick={onFinalStep ? hideConversionHostWizardAction : this.nextStep}
            disabled={disableNextStep}
          >
            {onFinalStep ? __('Close') : activeStep.id === stepIDs.authenticationStep ? __('Configure') : __('Next')}
            {!onFinalStep && <Icon type="fa" name="angle-right" />}
          </Button>
        </Wizard.Footer>
      </Wizard>
    );
  }
}

ConversionHostWizard.propTypes = {
  hideConversionHostWizardAction: PropTypes.func,
  conversionHostWizardExitedAction: PropTypes.func,
  conversionHostWizardVisible: PropTypes.bool,
  isPostingConversionHosts: PropTypes.bool,
  forms: PropTypes.object
};

ConversionHostWizard.defaultProps = {
  forms: {}
};

export default ConversionHostWizard;
