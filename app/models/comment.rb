class Comment < ApplicationRecord
  validates :body, presence: true, length: { minimum: 5 }
  belongs_to :post
  belongs_to :user
end
