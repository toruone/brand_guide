class AddUrlToShop < ActiveRecord::Migration[6.0]
  def change
    add_column :shops, :shop_url, :string
  end
end
