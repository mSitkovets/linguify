import React from "react"
import PropTypes from "prop-types"
import {AppProvider, Page, Card, DataTable} from '@shopify/polaris'

class Table extends React.Component {
  render () {
    return (
      <AppProvider>
        <Page>
          <Card title={this.props.title}>         
            <DataTable
            columnContentTypes = {this.props.columnContentTypes}
            headings={this.props.headings}
            rows={this.props.rows}
            />             
          </Card>
        </Page>
      </AppProvider>
    );
  }
}

Table.propTypes = {
  rows: PropTypes.array,
  title: PropTypes.string,
  columnContentTypes: PropTypes.array,
  headings: PropTypes.array,
};
export default Table
