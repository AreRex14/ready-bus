class RemoveScheduleRefsFromBookings < ActiveRecord::Migration[6.0]
  def change
    remove_reference :bookings, :schedule, null: false, foreign_key: true
  end
end
