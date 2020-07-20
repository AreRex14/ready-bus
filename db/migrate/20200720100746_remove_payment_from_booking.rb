class RemovePaymentFromBooking < ActiveRecord::Migration[6.0]
  def change
    remove_reference :bookings, :payment, foreign_key: true
  end
end
