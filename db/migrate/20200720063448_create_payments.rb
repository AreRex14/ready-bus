class CreatePayments < ActiveRecord::Migration[6.0]
  def change
    create_table :payments do |t|
      t.string :ccnumber
      t.string :cvcnumber
      t.string :ccexpmonth
      t.string :ccexpyear

      t.timestamps
    end
  end
end
