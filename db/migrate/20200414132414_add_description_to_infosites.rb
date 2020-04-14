class AddDescriptionToInfosites < ActiveRecord::Migration[6.0]
  def change
    add_column :info_sites, :description, :string
  end
end
