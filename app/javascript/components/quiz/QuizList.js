import React from "react";
import PropTypes from "prop-types";
import QuizItem from "./QuizItem";
import { AppProvider, Page, Banner } from "@shopify/polaris";

class QuizList extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      addWarning: false
    };
    this.displayWarningBanner = this.displayWarningBanner.bind(this);
  }

  displayWarningBanner() {
    this.setState({
      addWarning: true
    });
  }
  render() {
    const quizzes = this.props.quizzes.map((quiz, key) => (
      <QuizItem
        displayWarningBanner={this.displayWarningBanner}
        quiz={quiz}
        key={key}
      />
    ));
    const warningBanner = this.state.addWarning ? (
      <Banner title="This quiz is already in your list." status="warning" />
    ) : null;
    return (
      <AppProvider>
        <div>
          {warningBanner}
          <Page title="Find a Quiz">{quizzes}</Page>
        </div>
      </AppProvider>
    );
  }
}

QuizList.propTypes = {
  quizzes: PropTypes.array
};
export default QuizList;
