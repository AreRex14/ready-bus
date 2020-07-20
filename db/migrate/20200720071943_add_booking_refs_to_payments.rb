class AddBookingRefsToPayments < ActiveRecord::Migration[6.0]
  def change
    add_reference :payments, :booking, null: true, foreign_key: true
  end
end
