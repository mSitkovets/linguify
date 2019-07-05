class Attempt < ApplicationRecord
  validates :quiz_id, :user_id, :score, presence: true
  validates :score, numericality: { greater_than_or_equal_to: 0, only_integer: true }
  belongs_to :user, optional: true
  belongs_to :quiz, optional: true

  def self.calcScore()
  end
end
