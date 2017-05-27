class Post < ApplicationRecord
  has_many :comments

  belongs_to :user
  belongs_to :classroom

  validates :user_id, presence: true
  validates :classroom_id, presence: true
  validates :content, presence: true
  validates :title, presence: true
  validate  :picture_size

  mount_uploader :picture, PictureUploader

  default_scope -> {order(created_at: :desc)}

  private

  def picture_size
    if picture.size > 5.megabytes
      errors.add(:picture, "should be less than 5MB")
    end
  end
end
