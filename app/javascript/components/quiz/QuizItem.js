import React from "react"
import PropTypes from "prop-types"
import {Layout, Card, Button} from '@shopify/polaris'

class QuizItem extends React.Component {
  render () {
    return (
        <Card title={this.props.quiz.title} sectioned>
          <p>{this.props.quiz.description}</p>
          <p><strong>Difficulty Level: </strong>{this.props.quiz.difficulty_level}</p>
          <p><strong>Learning: </strong> {this.props.quiz.language_learning}</p>
          <p><strong>From: </strong>{this.props.quiz.instruction_language}</p>
          <Button primary>Play Now</Button>
          <Button primary>Add to Play Later</Button>
        </Card>
    );
  }
}

QuizItem.propTypes = {
  quiz: PropTypes.object
};
export default QuizItem
