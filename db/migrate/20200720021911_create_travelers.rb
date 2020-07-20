class CreateTravelers < ActiveRecord::Migration[6.0]
  def change
    create_table :travelers do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone_no, null: false, default: ""
      t.string :ic_no, null: false, default: ""
      t.integer :age

      t.timestamps
    end
  end
end
