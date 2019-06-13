class Quiz < ApplicationRecord
  validates :title, :description, :user_id, :difficulty_level, presence: true
  has_many :attempts, dependent: :destroy
  has_many :questions, dependent: :destroy
  has_many :comments, dependent: :destroy
  # belongs_to :user, optional: true
end
