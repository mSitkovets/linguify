class Question < ApplicationRecord
  validates :question, :option_a, :option_b, :option_c, :answer, presence: true
  belongs_to :quiz
  has_many :answers, dependent: :destroy
end
