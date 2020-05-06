class User < ApplicationRecord
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :username, presence: true, length: { in: 4..12 }, uniqueness: true
  validates :email, presence: true, length: { maximum:30 }, uniqueness: true, 
             format: { with: VALID_EMAIL_REGEX, message: "invalid email" } 
  validates :password, presence: true, length: { in: 6..16 }
end
