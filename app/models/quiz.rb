class Quiz < ApplicationRecord
  validates :title, :description, :user_id, :difficulty_level, :language_learning, :instruction_language, presence: true
  has_many :attempts, dependent: :destroy
  has_many :questions, dependent: :destroy
  has_many :comments, dependent: :destroy
end
