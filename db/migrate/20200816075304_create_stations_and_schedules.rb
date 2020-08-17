class CreateStationsAndSchedules < ActiveRecord::Migration[6.0]
  def change
    create_table :stations_schedules, id: false do |t|
      t.belongs_to :station
      t.belongs_to :schedule
    end
  end
end
