class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
    t.integer :user_id
    t.integer :hostel_id
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.timestamps null: false
    end
  end
end
