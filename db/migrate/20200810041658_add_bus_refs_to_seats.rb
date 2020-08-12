class AddBusRefsToSeats < ActiveRecord::Migration[6.0]
  def change
    add_reference :seats, :bus, null: false, foreign_key: true, index: true
  end
end
