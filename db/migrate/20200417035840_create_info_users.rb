class CreateInfoUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :info_users do |t|

      t.timestamps
    end
  end
end
