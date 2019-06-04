class Question < ApplicationRecord
  validates :question, :option_a, :option_b, :option_c, :answer, :quiz_id, presence: true
  validates :option_a, :option_b, :option_c, :answer, uniqueness: true
  belongs_to :quiz
end
