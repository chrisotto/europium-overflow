class User < ActiveRecord::Base
  include BCrypt
  has_many :answers
  has_many :questions
  has_secure_password
  validates :email, uniqueness: true
end
