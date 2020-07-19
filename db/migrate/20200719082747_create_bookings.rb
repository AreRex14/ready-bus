class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.string :seat_label
      t.integer :fare

      t.timestamps
    end
  end
end
