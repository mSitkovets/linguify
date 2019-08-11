import React from "react";
import AddQuestionType from "./AddQuestionType";
class NewQuestionCreator extends React.Component {
  state = {
    appendedCompsCount: 0
  };

  addQuestion = () => {
    event.preventDefault();
    this.setState({
      appendedCompsCount: this.state.appendedCompsCount + 1
    });
  };

  getAppendedComponents = () => {
    const appendedComponents = [];
    for (let i = 0; i < this.state.appendedCompsCount; i++) {
      appendedComponents.push(<AddQuestionType key={i} />);
    }
    return appendedComponents;
  };

  render() {
    return (
      <div className="field">
        {console.log("1")}
        {this.getAppendedComponents()}
        <button onClick={this.addQuestion}>
          {I18n.t("quizzes.form.add_question")}
        </button>
      </div>
    );
  }
}
export default NewQuestionCreator;
