class Comment < ApplicationRecord
  validates :body, presence: true, length: { maximum: 500 }
  validates :post_id, presence: true
  validates :user_id, presence: true
  belongs_to :user
  belongs_to :post
end
