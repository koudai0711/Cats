class Tweet < ApplicationRecord
  belongs_to                     :user
  mount_uploader  :image, ImagesUploader
#  has_many                       :images, dependent: :destroy
#  accepts_nested_attributes_for  :images
  validates :image, presence: true
end
