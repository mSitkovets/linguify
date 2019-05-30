class User < ApplicationRecord
  validates :username, :password, :email, presence: true
  validates :username, :email, uniqueness: true
  validates :email, format: {:with => /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i, multiline: true, message: "domain name must be at least 2 letters and no more than 6."}
  validates :username, length: { maximum: 15 }
  validates :password, :format => {:with => /^(?=.*[a-zA-Z])(?=.*[0-9]).{6,15}$/, multiline: true, message: "must be at least 6 characters and include one number and one letter."}
  has_many :quizzes
end
