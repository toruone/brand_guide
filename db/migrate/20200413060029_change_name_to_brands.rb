class ChangeNameToBrands < ActiveRecord::Migration[6.0]
  def change
    rename_column :brands, :image, :image_logo
  end
end
