class CreateOperators < ActiveRecord::Migration[6.0]
  def change
    create_table :operators do |t|
      t.string :name
      t.text :address
      t.string :phone_no
      t.string :email

      t.timestamps
    end
  end
end
