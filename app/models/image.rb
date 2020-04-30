class Image < ApplicationRecord
  mount_uploader  :image, ImagesUploader
  belongs_to      :tweet, optional: true

  validates       :image,     presence: true
end
