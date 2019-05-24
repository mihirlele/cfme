import React from 'react';
import PropTypes from 'prop-types';
import { Breadcrumb, Tabs, Tab } from 'patternfly-react';
import Toolbar from '../../../config/Toolbar';
import GeneralSettings from './screens/GeneralSettings';
import ConversionHostsSettings from './screens/ConversionHostsSettings';

const Settings = props => {
  const { match, redirectTo } = props;

  return (
    <React.Fragment>
      <Toolbar>
        <Breadcrumb.Item active>{__('Compute')}</Breadcrumb.Item>
        <Breadcrumb.Item active>{__('Migration')}</Breadcrumb.Item>
        <Breadcrumb.Item active>
          <strong>{__('Migration Settings')}</strong>
        </Breadcrumb.Item>
      </Toolbar>
      <div style={{ marginTop: 10 }}>
        <Tabs id="settings-tabs" activeKey={match.path} onSelect={key => redirectTo(key)} unmountOnExit>
          <Tab eventKey="/settings" title={__('Migration Throttling')}>
            <GeneralSettings />
          </Tab>
          <Tab eventKey="/settings/conversion_hosts" title={__('Conversion Hosts')}>
            <ConversionHostsSettings />
          </Tab>
        </Tabs>
      </div>
    </React.Fragment>
  );
};

Settings.propTypes = {
  match: PropTypes.object,
  redirectTo: PropTypes.func
};

export default Settings;
