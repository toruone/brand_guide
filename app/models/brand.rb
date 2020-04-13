class Brand < ApplicationRecord
  mount_uploader :image_logo, BrandImageUploader
  mount_uploader :image1, BrandImageUploader
  mount_uploader :image2, BrandImageUploader
  mount_uploader :image3, BrandImageUploader

  has_many :shops
end
