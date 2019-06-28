import React from 'react'
class AddQuestionType extends React.Component { 
  render() {
    return ( 
    <div>
      <div className="field">
      <label htmlFor="question_question">Question</label> 
      <input type="text"
            name="question[question]"
            id="question_question" /> 
      </div>
      <div className="field">
        <label htmlFor="question_option_a">Option A</label> 
        <input type="text"
              name="order[option_a]"
              id="order_option_a" /> 
        </div>
        <div className="field">
        <label htmlFor="question_option_b">Option B</label> 
        <input type="text"
              name="order[option_b]"
              id="order_option_b" /> 
        </div>
        <div className="field">
        <label htmlFor="question_option_c">Option C</label> 
        <input type="text"
              name="order[option_c]"
              id="order_option_c" /> 
        </div>
        <div className="field">
        <label htmlFor="question_answer">Answer</label> 
        <input type="text"
              name="order[answer]"
              id="order_answer" /> 
        </div>
    </div> 
  );
} 
}
export default AddQuestionType