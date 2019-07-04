require 'test_helper'

class QuestionTest < ActiveSupport::TestCase
  fixtures :questions
  test "question attributes must not be empty" do
    question = Question.new
    assert question.invalid?
    assert question.errors[:question].any?
    assert question.errors[:option_a].any?
    assert question.errors[:option_b].any?
    assert question.errors[:option_c].any?
    assert question.errors[:answer].any?
  end
end
