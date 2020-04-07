class CreateBrands < ActiveRecord::Migration[6.0]
  def change
    create_table :brands do |t|
      t.string :name
      t.string :country
      t.integer :since
      t.text :description
      t.string :image
      t.string :hp_url
      t.string :status
      t.timestamps
    end
  end
end
