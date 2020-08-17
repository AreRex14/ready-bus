class CreateBusesAndSeats < ActiveRecord::Migration[6.0]
  def change
    create_table :buses_seats, id: false do |t|
      t.belongs_to :bus
      t.belongs_to :seat
    end
  end
end
