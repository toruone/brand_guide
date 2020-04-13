class Shop < ApplicationRecord
  mount_uploader :image, ShopImageUploader

  belongs_to :brand
end
