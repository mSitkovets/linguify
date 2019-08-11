import React from "react";
import ReactDOM from "react-dom";
import NewQuestionCreator from "NewQuestionCreator";

document.addEventListener("turbolinks:load", function() {
  var element = document.getElementById("new-question-component");
  ReactDOM.render(<NewQuestionCreator />, element);
});
