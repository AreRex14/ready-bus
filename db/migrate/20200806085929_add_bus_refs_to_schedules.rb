class AddBusRefsToSchedules < ActiveRecord::Migration[6.0]
  def change
    add_reference :schedules, :bus, null: false, foreign_key: true
  end
end
