import React from "react";
import PropTypes from "prop-types";
import { AppProvider, Page, Card, DataTable, Link } from "@shopify/polaris";

class TableWithLinks extends React.Component {
  deleteQuiz(id) {
    return fetch(`${this.props.url}/${id}`, { method: "DELETE" })
      .then(response => response.data)
      .catch(error => {
        if (error.response) {
          console.log(error.response);
        }
      });
  }
  render() {
    this.props.quizzes.forEach(element => {
      console.log(element[5]);
      const id = element[element.length - 1];
      element[element.length - 1] = (
        <Link url={`${this.props.url}/${id}`}>Show</Link>
      );
      element[element.length] = (
        <Link url={`${this.props.url}/${id}/edit`}>Edit</Link>
      );
      element[element.length + 1] = (
        <Link onClick={() => this.deleteQuiz(id)}>Destroy</Link>
      );
    });
    return (
      <AppProvider>
        <Page>
          <Card title={this.props.title}>
            <DataTable
              columnContentTypes={this.props.columnContentTypes}
              headings={this.props.headings}
              rows={this.props.quizzes}
            />
          </Card>
        </Page>
      </AppProvider>
    );
  }
}

TableWithLinks.propTypes = {
  quizzes: PropTypes.array,
  title: PropTypes.string,
  columnContentTypes: PropTypes.array,
  headings: PropTypes.array,
  url: PropTypes.string
};
export default TableWithLinks;
