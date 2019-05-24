import React from 'react';
import PropTypes from 'prop-types';
import { noop } from 'patternfly-react';

// This component has no role on the page, and will be hidden from screen readers (role="presentation").
// Prevents a click on an inner element (e.g. a DropdownKebab) from triggering a click on an ancestor (e.g. a table row).
// The onKeyUp handler and role are used to satisfy eslint-plugin-jsx-a11y.
const StopPropagationOnClick = ({ children }) => (
  <span onClick={e => e.stopPropagation()} onKeyUp={noop} role="presentation">
    {children}
  </span>
);

StopPropagationOnClick.propTypes = {
  children: PropTypes.node
};

export default StopPropagationOnClick;
