class AddImageToShop < ActiveRecord::Migration[6.0]
  def change
    add_column :shops, :image1, :string
    add_column :shops, :image2, :string
    add_column :shops, :image3, :string
    add_column :brands, :image1, :string
    add_column :brands, :image2, :string
    add_column :brands, :image3, :string
  end
end
