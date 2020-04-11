class AddForToInfoSite < ActiveRecord::Migration[6.0]
  def change
    add_column :info_sites, :for, :string
  end
end
