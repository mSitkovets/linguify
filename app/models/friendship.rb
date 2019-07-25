class Friendship < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :friend, class_name: "User", optional: true
  validates :user, :friend, presence: true
  validates_uniqueness_of :user, scope: [:friend]
end
