class Shop < ApplicationRecord
  mount_uploader :image, ShopImageUploader
end
