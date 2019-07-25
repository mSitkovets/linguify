require 'test_helper'

class QuizzesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @quiz = quizzes(:one)
  end

  test "should get index" do
    get quizzes_url
    assert_response :success
  end

  test "should get new" do
    get new_quiz_url
    assert_response :success
  end

  test "should create quiz" do
    assert_difference('Quiz.count') do
      post quizzes_url, params: { quiz: { description: @quiz.description, difficulty_level: @quiz.difficulty_level, title: @quiz.title, user_id: @quiz.user_id , language_learning: @quiz.language_learning, instruction_language: @quiz.instruction_language} }
    end

    assert_redirected_to explore_index_url(locale: 'en')
  end

  test "should show quiz" do
    get quiz_url(@quiz)
    assert_response :success
  end

  test "should get edit" do
    get edit_quiz_url(@quiz)
    assert_response :success
  end

  test "should update quiz" do
    patch quiz_url(@quiz), params: { quiz: { description: @quiz.description, difficulty_level: @quiz.difficulty_level, title: @quiz.title, user_id: @quiz.user_id, language_learning: @quiz.language_learning, instruction_language: @quiz.instruction_language } }
    assert_redirected_to quiz_url(@quiz)
  end

  test "can't delete quiz in list" do 
    assert_difference('Quiz.count', 0) do
      delete quiz_url(quizzes(:two)) 
    end
      assert_redirected_to quizzes_url
  end
  
  test "should destroy quiz" do
    assert_difference('Quiz.count', -1) do
      delete quiz_url(@quiz)
    end

    assert_redirected_to quizzes_url
  end
end
