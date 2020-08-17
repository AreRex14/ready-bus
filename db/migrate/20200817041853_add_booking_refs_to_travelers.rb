class AddBookingRefsToTravelers < ActiveRecord::Migration[6.0]
  def change
    add_reference :travelers, :booking, null: false, foreign_key: true
  end
end
