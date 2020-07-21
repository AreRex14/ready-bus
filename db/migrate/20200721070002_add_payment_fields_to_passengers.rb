class AddPaymentFieldsToPassengers < ActiveRecord::Migration[6.0]
  def change
    add_column :passengers, :stripe_id, :string
    add_column :passengers, :card_brand, :string
    add_column :passengers, :card_exp_month, :string
    add_column :passengers, :card_exp_year, :string
    add_column :passengers, :card_last4, :string
  end
end
