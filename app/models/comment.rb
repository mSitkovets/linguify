class Comment < ApplicationRecord
  validates :body, :user_id, :quiz_id, presence: true
  belongs_to :user, optional: true
  belongs_to :quiz, optional: true
end
