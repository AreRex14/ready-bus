class RemoveSeatsLabelFromSeat < ActiveRecord::Migration[6.0]
  def change
    remove_column :seats, :label, :string
  end
end