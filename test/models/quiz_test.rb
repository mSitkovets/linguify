require 'test_helper'

class QuizTest < ActiveSupport::TestCase
  test "quiz attributes must not be empty" do
    quiz = Quiz.new
    assert quiz.invalid?
    assert quiz.errors[:title].any?
    assert quiz.errors[:description].any?
    assert quiz.errors[:user_id].any?
    assert quiz.errors[:difficulty_level].any?
  end
end
