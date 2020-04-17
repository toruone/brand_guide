class InfoUser < ApplicationRecord
  belongs_to :info_site
  belongs_to :user
end
