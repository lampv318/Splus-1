class Classroom < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :participations
  has_many :users, through: :participations

  belongs_to :course
  belongs_to :semester
end
