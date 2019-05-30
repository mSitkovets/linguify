class Attempt < ApplicationRecord
  validates :quiz_id, :user_id, presence: true
  validates :score, numericality: { only_integer: true }
  belongs_to :user
  belongs_to :quiz
end
