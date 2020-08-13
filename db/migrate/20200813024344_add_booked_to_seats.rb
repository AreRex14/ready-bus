class AddBookedToSeats < ActiveRecord::Migration[6.0]
  def change
    add_column :seats, :booked, :boolean, default: false
  end
end
