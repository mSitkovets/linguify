class Question < ApplicationRecord
  validates :question, :option_a, :option_b, :option_c, :answer, :quiz_id, presence: true
  belongs_to :quiz, optional: true
end
