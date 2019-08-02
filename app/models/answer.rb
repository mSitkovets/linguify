class Answer < ApplicationRecord
  validates :question_id, :attempt_id, :user_answer, presence: true
  belongs_to :question, optional: true
  belongs_to :attempt, optional: true
end
