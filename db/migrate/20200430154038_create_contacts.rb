class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.string :user_name
      t.string :email
      t.text :inquiry
      t.timestamps
    end
  end
end
