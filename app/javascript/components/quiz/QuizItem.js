import React from "react";
import PropTypes from "prop-types";
import { Card } from "@shopify/polaris";

class QuizItem extends React.Component {
  constructor(props) {
    super(props);
    this.checkAddQuiz = this.checkAddQuiz.bind(this);
    this.addLineItem = this.addLineItem.bind(this);
  }

  checkAddQuiz() {
    const { quiz, displayWarningBanner } = this.props;
    if (quiz.saved) {
      displayWarningBanner();
    } else {
      this.addLineItem();
    }
  }
  addLineItem() {
    fetch(
      `https://dev-degree-rails-project-msitkovets.myshopify.io/line_items?quiz_id=${
        this.props.quiz.id
      }`,
      {
        method: "POST"
      }
    ).then(function(response) {
      if (response.ok) {
        window.location.reload();
      }
    });
  }

  render() {
    return (
      <Card
        sectioned
        title={this.props.quiz.title}
        secondaryFooterActions={[
          { content: "Add to Play Later", onAction: this.checkAddQuiz }
        ]}
        primaryFooterAction={{
          content: "Play Now",
          url: `https://dev-degree-rails-project-msitkovets.myshopify.io/quizzes/${
            this.props.quiz.id
          }/attempts/new`
        }}
      >
        <p>{this.props.quiz.description}</p>
        <p>
          <strong>Difficulty Level: </strong>
          {this.props.quiz.difficulty_level}
        </p>
        <p>
          <strong>Learning: </strong> {this.props.quiz.language_learning}
        </p>
        <p>
          <strong>From: </strong>
          {this.props.quiz.instruction_language}
        </p>
      </Card>
    );
  }
}

QuizItem.propTypes = {
  quiz: PropTypes.object
};
export default QuizItem;
