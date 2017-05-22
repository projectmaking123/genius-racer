class Player < ActiveRecord::Base
  include BCrypt
  has_secure_password
  has_many :games
  validates :password_digest, :email, :username, presence: true
  validates :email, :username, uniqueness: true
end
