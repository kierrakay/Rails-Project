class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :email
      t.string :password_digest
      t.boolean :admin, default: false
      t.timestamps null: false
      # t.string reservations? may need to add this as a coulmn
    end
  end
end
