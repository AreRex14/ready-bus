class RemoveBookedFromSeats < ActiveRecord::Migration[6.0]
  def change
    remove_column :seats, :booked, :boolean
  end
end
