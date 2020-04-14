class Shop < ApplicationRecord
  mount_uploader :image, ShopImageUploader
  mount_uploader :image1, BrandImageUploader
  mount_uploader :image2, BrandImageUploader
  mount_uploader :image3, BrandImageUploader
  belongs_to :brand
end
