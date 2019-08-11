require 'test_helper'

class AttemptsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @attempt = attempts(:one)
  end

  test "should get index" do
    get quiz_attempts_url(id: @attempt.id, quiz_id: @attempt.quiz_id)
    assert_response :success
  end

  test "should get new" do
    get new_quiz_attempt_url(quiz_id: @attempt.quiz_id)
    assert_response :success
  end

  test "should get edit" do
    get edit_quiz_attempt_url(id: @attempt.id, quiz_id: @attempt.quiz_id)
    assert_response :success
  end

  test "should update attempt" do
    patch quiz_attempt_url(id: @attempt.id, quiz_id: @attempt.quiz_id), params: { question: { "2": { answer: "a" } } }
    assert_redirected_to quiz_attempt_url
  end

  test "should destroy attempt" do
    assert_difference('Attempt.count', -1) do
      delete quiz_attempt_url(id: @attempt.id, quiz_id: @attempt.quiz_id)
    end

    assert_redirected_to quiz_attempts_url
  end
end
