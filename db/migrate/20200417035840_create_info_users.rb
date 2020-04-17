class CreateInfoUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :info_users do |t|
      t.integer :user_id
      t.integer :info_site_id
      t.timestamps
    end
  end
end
