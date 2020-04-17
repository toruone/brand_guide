class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :brand_users, dependent: :destroy
  has_many :brands, through: :brand_users

  has_many :info_users, dependent: :destroy
  has_many :info_site, through: :info_users
end
