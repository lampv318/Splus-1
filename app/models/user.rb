class User < ApplicationRecord
  has_many :comments
  has_many :posts
  has_many :bookmarks
  has_many :participations
  has_many :classrooms, through: :participations

  belongs_to :school
end
