class AddUserRefsToTravelers < ActiveRecord::Migration[6.0]
  def change
    add_reference :travelers, :user, foreign_key: true
  end
end
