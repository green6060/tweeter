class Post < ApplicationRecord
  belongs_to :user

  has_many :comments

  has_one_attached :main_picture # one-to-one relationship
  has_many_attached :uploads # one-to-many relationship
end
