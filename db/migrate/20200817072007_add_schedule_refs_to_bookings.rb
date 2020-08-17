class AddScheduleRefsToBookings < ActiveRecord::Migration[6.0]
  def change
    add_reference :bookings, :schedule, null: false, foreign_key: true
  end
end
