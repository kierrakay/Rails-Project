class CreateHostels < ActiveRecord::Migration[5.2]
  def change
    create_table :hostels do |t|
      t.string :location
      t.integer :beds
      t.integer :satisfaction_rating
      t.timestamps null: false
      # t.integer :nausea_rating
      # t.integer :min_height
    end
  end
end
