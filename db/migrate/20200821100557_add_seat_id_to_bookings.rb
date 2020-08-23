class AddSeatIdToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :seatId, :string
  end
end
