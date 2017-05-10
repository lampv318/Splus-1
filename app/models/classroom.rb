class Classroom < ApplicationRecord
  has_many :posts
  has_many :participations
  has_many :users, through: :participations

  belongs_to :course
  belongs_to :semester
end
