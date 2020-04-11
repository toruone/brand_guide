class AddImageToInfoSite < ActiveRecord::Migration[6.0]
  def change
    add_column :info_sites, :image, :string
  end
end
