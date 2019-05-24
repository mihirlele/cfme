import React from 'react';
import PropTypes from 'prop-types';
import { reduxForm } from 'redux-form';
import { Button, Modal, Form, Grid } from 'patternfly-react';
import { CONVERSION_HOST_TYPES } from '../../../../../../../../common/constants';
import SshKeyField from '../../../../../common/forms/SshKeyField';
import { getConversionHostSshKeyInfoMessage } from '../../../../helpers';

const fieldBaseProps = { labelWidth: 4, controlWidth: 7 };

const RetryConversionHostConfirmationModal = ({
  show,
  conversionHostTaskToRetry,
  isPostingConversionHosts,
  hideConversionHostRetryModalAction,
  conversionHostRetryModalExitedAction,
  postConversionHostsAction,
  postConversionHostsUrl,
  retryForm
}) => {
  const requestParams =
    conversionHostTaskToRetry &&
    conversionHostTaskToRetry.context_data &&
    conversionHostTaskToRetry.context_data.request_params;
  const isUsingSshTransformation = !requestParams.vmware_vddk_package_url;

  const selectedProviderType = Object.keys(CONVERSION_HOST_TYPES).find(
    key => CONVERSION_HOST_TYPES[key] === requestParams.resource_type
  );
  const formHasErrors = retryForm && !!retryForm.syncErrors;

  return (
    <Modal
      show={show}
      onHide={hideConversionHostRetryModalAction}
      onExited={conversionHostRetryModalExitedAction}
      dialogClassName="modal-lg wizard-pf"
      backdrop="static"
    >
      <Modal.Header>
        <Modal.CloseButton onClick={hideConversionHostRetryModalAction} />
        <Modal.Title>{__('Retry Conversion Host Configuration')}</Modal.Title>
      </Modal.Header>
      <Modal.Body>
        <Form className="form-horizontal">
          <ul>
            <p>
              {__('For your security, SSH private keys from the configuration wizard were not saved. Re-enter the necessary authentication details to retry configuration of the following conversion host:') /* prettier-ignore */}
            </p>
          </ul>
          <Form.FormGroup>
            <Grid.Col componentClass={Form.ControlLabel} sm={fieldBaseProps.labelWidth}>
              {__('Host')}
            </Grid.Col>
            <Grid.Col sm={fieldBaseProps.controlWidth} style={{ paddingTop: 3 }}>
              {conversionHostTaskToRetry.name}
            </Grid.Col>
          </Form.FormGroup>
          <SshKeyField
            {...fieldBaseProps}
            name="conversionHostSshKey"
            label={__('Conversion Host SSH private key')}
            controlId="host-ssh-key-input"
            info={getConversionHostSshKeyInfoMessage(selectedProviderType)}
          />
          {isUsingSshTransformation && (
            <SshKeyField
              {...fieldBaseProps}
              name="vmwareSshKey"
              label={__('VMware hypervisors SSH private key')}
              controlId="vmware-ssh-key-input"
              style={{ marginTop: 25 }}
            />
          )}
        </Form>
      </Modal.Body>
      <Modal.Footer>
        <Button bsStyle="default" className="btn-cancel" onClick={hideConversionHostRetryModalAction}>
          {__('Cancel')}
        </Button>
        <Button
          bsStyle="primary"
          disabled={formHasErrors || isPostingConversionHosts}
          onClick={() => {
            const postBody = {
              ...conversionHostTaskToRetry.context_data.request_params,
              conversion_host_ssh_private_key: retryForm.values.conversionHostSshKey.body,
              ...(isUsingSshTransformation ? { vmware_ssh_private_key: retryForm.values.vmwareSshKey.body } : {})
            };
            postConversionHostsAction(postConversionHostsUrl, [postBody]).then(hideConversionHostRetryModalAction);
          }}
        >
          {__('Retry')}
        </Button>
      </Modal.Footer>
    </Modal>
  );
};

RetryConversionHostConfirmationModal.propTypes = {
  show: PropTypes.bool,
  conversionHostTaskToRetry: PropTypes.object,
  isPostingConversionHosts: PropTypes.bool,
  hideConversionHostRetryModalAction: PropTypes.func,
  conversionHostRetryModalExitedAction: PropTypes.func,
  postConversionHostsAction: PropTypes.func,
  postConversionHostsUrl: PropTypes.string,
  retryForm: PropTypes.object
};

export default reduxForm({
  form: 'retryConversionHost',
  initialValues: {
    conversionHostSshKey: { filename: '', body: '' },
    vmwareSshKey: { filename: '', body: '' }
  }
})(RetryConversionHostConfirmationModal);
