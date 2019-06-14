class User < ApplicationRecord
  validates :username, :password, :email, presence: true
  validates :username, :email, uniqueness: true
  validates :email, format: {:with => /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i, multiline: true}
  validates :username, length: { maximum: 15 }
  validates :password, :format => {:with => /^(?=.*[a-zA-Z])(?=.*[0-9]).{6,15}$/, multiline: true, message: "must be at least 6 characters and include one number and one letter."}
  
  has_many :quizzes, dependent: :destroy
  has_many :comments, dependent: :destroy

  has_many :friendships, dependent: :destroy
  has_many :friends, through: :friendships

  has_many :follows, class_name: "Friendship", foreign_key: "friend_id"
  has_many :followers, through: :follows, source: :user
end
