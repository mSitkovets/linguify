require 'test_helper'

class AttemptTest < ActiveSupport::TestCase
  fixtures :attempts
  test "attempt attributes must not be empty" do
    attempt = Attempt.new
    assert attempt.invalid?
    assert attempt.errors[:user_id].any?
    assert attempt.errors[:quiz_id].any?
    assert attempt.errors[:score].any?
  end

  test "attempt score must be a positive integer" do
    attempt = Attempt.new(user_id: 1, quiz_id: 1)

    attempt.score = -1
    assert attempt.invalid?
    assert_equal ["must be greater than or equal to 0"],
      attempt.errors[:score]
    
    attempt.score = 0
    assert attempt.valid?

    attempt.score = 1.1
    assert attempt.invalid?
    assert_equal ["must be an integer"],
      attempt.errors[:score]

    attempt.score = 40
    assert attempt.valid?
  end
end
