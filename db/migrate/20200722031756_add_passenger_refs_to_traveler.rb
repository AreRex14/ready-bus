class AddPassengerRefsToTraveler < ActiveRecord::Migration[6.0]
  def change
    add_reference :travelers, :passenger, foreign_key: true
  end
end
