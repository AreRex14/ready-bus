class CreateSchedules < ActiveRecord::Migration[6.0]
  def change
    create_table :schedules do |t|
      t.string :pickup_station
      t.datetime :pickup_time
      t.string :dropoff_station
      t.datetime :dropoff_time

      t.timestamps
    end
  end
end
