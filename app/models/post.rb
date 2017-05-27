class Post < ApplicationRecord
  has_many :comments

  belongs_to :user
  belongs_to :classroom

  validates :user_id, presence: true
  validates :classroom_id, presence: true
  validates :content, presence: true
  validates :title, presence: true

  default_scope -> {order(created_at: :desc)}
end
