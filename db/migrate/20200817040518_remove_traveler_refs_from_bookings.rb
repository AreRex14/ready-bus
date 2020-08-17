class RemoveTravelerRefsFromBookings < ActiveRecord::Migration[6.0]
  def change
    remove_reference :bookings, :traveler, null: false, foreign_key: true
  end
end
