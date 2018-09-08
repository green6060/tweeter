class Post < ApplicationRecord
  belongs_to :user

  has_many :comments

  ount_base64_uploader :image, ImageUploader
end
