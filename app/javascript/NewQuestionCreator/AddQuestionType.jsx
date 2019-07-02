import React from 'react'
class AddQuestionType extends React.Component { 
  render() {
    return ( 
    <div>
      <div className="field">
      <label htmlFor="question_question">
            {I18n.t("quizzes.form.add_question_type.question")}
      </label> 
      <input type="text"
            name="question[question]"
            id="question_question" /> 
      </div>
      <div className="field">
        <label htmlFor="question_option_a">
            {I18n.t("quizzes.form.add_question_type.option_a")}
        </label> 
        <input type="text"
              name="question[option_a]"
              id="question_option_a" /> 
        </div>
        <div className="field">
        <label htmlFor="question_option_b">
            {I18n.t("quizzes.form.add_question_type.option_b")}
       </label> 
        <input type="text"
              name="question[option_b]"
              id="question_option_b" /> 
        </div>
        <div className="field">
        <label htmlFor="question_option_c">
            {I18n.t("quizzes.form.add_question_type.option_c")}
      </label> 
        <input type="text"
              name="question[option_c]"
              id="question_option_c" /> 
        </div>
        <div className="field">
        <label htmlFor="question_answer">
            {I18n.t("quizzes.form.add_question_type.answer")}
      </label> 
        <input type="text"
              name="question[answer]"
              id="question_answer" /> 
        </div>
    </div> 
  );
} 
}
export default AddQuestionType