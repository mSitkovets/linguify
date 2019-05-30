class Quiz < ApplicationRecord
  validates :title, :description, :user_id, :difficulty_level, presence: true
  has_many :attempts
end
