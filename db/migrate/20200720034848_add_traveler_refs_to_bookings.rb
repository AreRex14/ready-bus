class AddTravelerRefsToBookings < ActiveRecord::Migration[6.0]
  def change
    add_reference :bookings, :traveler, null: true, foreign_key: true
  end
end
