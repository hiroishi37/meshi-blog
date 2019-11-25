class Comment < ApplicationRecord
  belongs_to :meshi
  belongs_to :user

  validates :content, presence: true, unless: :image?
  mount_uploader :image, ImageUploader
end