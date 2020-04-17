class Brand < ApplicationRecord
  mount_uploader :image_logo, BrandImageUploader
  mount_uploader :image1, BrandImageUploader
  mount_uploader :image2, BrandImageUploader
  mount_uploader :image3, BrandImageUploader

  has_many :brand_users, dependent: :destroy
  has_many :users, through: :brand_users
  has_many :shops

  def favorited_by?(user)
    brand_users.where(user_id: user.id).exists?
  end
end
