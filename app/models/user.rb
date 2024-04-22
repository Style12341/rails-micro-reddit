class User < ApplicationRecord
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP } , if: -> { email}
  validates :username, presence: true, uniqueness: true
  validates :password, presence: true
  has_many :posts
end
