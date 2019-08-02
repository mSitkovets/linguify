import React from "react"
import PropTypes from "prop-types"
import {AppProvider, Page, Button} from '@shopify/polaris'
class PolarisButton extends React.Component {
  render () {
    return (
      <AppProvider>
        <Page>
          <Button primary url={this.props.url}>{this.props.text}</Button>
        </Page>
      </AppProvider>
    );
  }
}

PolarisButton.propTypes = {
  text: PropTypes.string,
  url: PropTypes.string
};
export default PolarisButton
