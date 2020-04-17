class InfoSite < ApplicationRecord
  mount_uploader :image, InfoSiteImageUploader

  has_many :info_users, dependent: :destroy
  has_many :users, through: :info_users

  def favorited_by?(user)
    info_users.where(user_id: user.id).exists?
  end
end
