class AddPayloadToSeats < ActiveRecord::Migration[6.0]
  def change
    add_column :seats, :payload, :jsonb, null: false, default: '{}'
  end
end