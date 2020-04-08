class CreateInfoSites < ActiveRecord::Migration[6.0]
  def change
    create_table :info_sites do |t|
      t.string :name
      t.string :url
      t.string :status
      t.timestamps
    end
  end
end
