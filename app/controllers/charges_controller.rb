class ChargesController < ApplicationController
    def new
      @traveler_details = Traveler.last
      @booking_details = Booking.last
    end

    def create
        @amount = 2000

        customer = Stripe::Customer.create({
         email: params[:stripeEmail],
         source: params[:stripeToken],
        })

        charge = Stripe::Charge.create(
          customer: customer.id,
          amount: @amount,
          currency: "myr",
          description: "ReadyBus",
        )

        rescue Stripe::CardError => e
          flash.alert = e.message
          render action: :new
        end
end
