import React from 'react';
import PropTypes from 'prop-types';
import { Card, Grid, noop } from 'patternfly-react';

const InProgressCard = ({ title, children, footer, onClick, ...props }) => (
  <Grid.Col sm={12} md={6} lg={4}>
    <Card
      id={`${Array.isArray(title.props.children) ? title.props.children[1] : title.props.children}-progress-card`}
      matchHeight
      onClick={onClick}
      {...props}
    >
      <Card.Heading>{title}</Card.Heading>
      <Card.Body>{children}</Card.Body>
      {footer}
    </Card>
  </Grid.Col>
);

InProgressCard.propTypes = {
  title: PropTypes.node,
  children: PropTypes.node,
  footer: PropTypes.node,
  onClick: PropTypes.func
};

InProgressCard.defaultProps = {
  title: '',
  children: null,
  footer: null,
  onClick: noop
};

export default InProgressCard;
