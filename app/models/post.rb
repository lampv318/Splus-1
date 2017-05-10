class Post < ApplicationRecord
  has_many :comments
  has_many :posts

  belongs_to :user
  belongs_to :classroom
end
