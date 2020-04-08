class Brand < ApplicationRecord
  mount_uploader :image, BrandImageUploader

end
