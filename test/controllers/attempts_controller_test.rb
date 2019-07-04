require 'test_helper'

class AttemptsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @attempt = attempts(:one)
  end

  test "should get index" do
    get quiz_attempts_url
    assert_response :success
  end

  test "should get new" do
    get new_quiz_attempt_url
    quiz_assert_response :success
  end

  test "should create attempt" do
    assert_difference('Attempt.count') do
      post quiz_attempts_url, params: { attempt: { quiz_id: @attempt.quiz_id, score: @attempt.score, user_id: @attempt.user_id } }
    end

    assert_redirected_to quiz_attempt_url(Attempt.last)
  end

  test "should show attempt" do
    get quiz_attempt_url(@attempt)
    assert_response :success
  end

  test "should get edit" do
    get edit_quiz_attempt_url(@attempt)
    assert_response :success
  end

  test "should update attempt" do
    patch quiz_attempt_url(@attempt), params: { attempt: { quiz_id: @attempt.quiz_id, score: @attempt.score, user_id: @attempt.user_id } }
    assert_redirected_to quiz_attempt_url(@attempt)
  end

  test "should destroy attempt" do
    assert_difference('Attempt.count', -1) do
      delete quiz_attempt_url(@attempt)
    end

    assert_redirected_to quiz_attempts_url
  end
end
