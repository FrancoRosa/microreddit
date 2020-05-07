class Post < ApplicationRecord
  validates :title, presence: true, uniqueness: true, length: { maximum: 50 }
  validates :body, presence: true, length: { maximum: 500 }
  belongs_to :user
  validates :user_id, presence: true
  has_many :comments, dependent: :destroy
end
