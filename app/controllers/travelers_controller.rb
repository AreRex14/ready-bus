class TravelersController < ApplicationController
  before_action :set_traveler, only: [:show, :edit, :update, :destroy]

  # GET /travelers
  # GET /travelers.json
  def index
    @travelers = Traveler.all
  end

  # GET /travelers/1
  # GET /travelers/1.json
  def show
  end

  # GET /travelers/new
  def new
    schedule_id = params[:schedule_id]
    schedule_bus_id = params[:schedule_bus_id]

    @traveler = Traveler.new
    @traveler.bookings.build
  end

  # GET /travelers/1/edit
  def edit
  end

  # Change to include schedule id and bus id to successfully booked
  # POST /travelers
  # POST /travelers.json
  def create
    @traveler = Traveler.new(traveler_params)
    @amount = 2000
    @traveler.user_id = current_user.id

    token = params[:stripeToken]
    card_brand = params[:user][:card_brand]
    card_exp_month = params[:user][:card_exp_month]
    card_exp_year = params[:user][:card_exp_year]
    card_last4 = params[:user][:card_last4]

    charge = Stripe::Charge.create(
      amount: @amount,
      currency: "myr",
      description: "ReadyBus",
      source: token
    )

    current_user.stripe_id = charge.id
    current_user.card_brand = card_brand
    current_user.card_exp_month = card_exp_month
    current_user.card_exp_year = card_exp_year
    current_user.card_last4 = card_last4
    current_user.save!


    respond_to do |format|
      if @traveler.save
        format.html { redirect_to @traveler, notice: 'Your travel has successfully booked.' }
        format.json { render :show, status: :created, location: @traveler }
      else
        format.html { render :new }
        format.json { render json: @traveler.errors, status: :unprocessable_entity }
      end
    end

    rescue Stripe::CardError => e
      flash.alert = e.message
      render action: :new
  end

  # PATCH/PUT /travelers/1
  # PATCH/PUT /travelers/1.json
  def update
    respond_to do |format|
      if @traveler.update(traveler_params)
        format.html { redirect_to @traveler, notice: 'Traveler was successfully updated.' }
        format.json { render :show, status: :ok, location: @traveler }
      else
        format.html { render :edit }
        format.json { render json: @traveler.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /travelers/1
  # DELETE /travelers/1.json
  def destroy
    @traveler.destroy
    respond_to do |format|
      format.html { redirect_to travelers_url, notice: 'Traveler was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_traveler
      @traveler = Traveler.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def traveler_params
      params.require(:traveler).permit(:first_name, :last_name, :phone_no, :ic_no, :age, bookings_attributes: [:seat_label, :fare])
    end
end
