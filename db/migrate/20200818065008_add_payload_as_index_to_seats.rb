class AddPayloadAsIndexToSeats < ActiveRecord::Migration[6.0]
  def change
    add_index :seats, :payload, using: :gin
  end
end
