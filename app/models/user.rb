class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :rememberable

  before_save :use_identify_to_create_email

  validates :name, presence: true, length: {maximum: 50}
  validates :identify_number, presence: true, length: {maximum: 8},
    numericality: {only_integer: true}, uniqueness: true
  validates :password, presence: true, length: {minimum: 6}

  has_many :comments
  has_many :posts
  has_many :bookmarks
  has_many :participations
  has_many :classrooms, through: :participations

  belongs_to :school

  private

  def use_identify_to_create_email
    self.email = "#{self.identify_number}@student.hust.edu.vn"
  end
end
