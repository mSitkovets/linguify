class Comment < ApplicationRecord
  validates :body, :user_id, :quiz_id, presence: true
  belongs_to :user
  belongs_to :quiz
end
