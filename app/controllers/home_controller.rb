class HomeController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @schedules = Schedule.all
  end

  def search
    @schedules = Schedule.all
    @search = params["search"]
    if @search.present?
      @dropoff_station = @search["dropoff_station"]
      @schedules = Schedule.where("dropoff_station ILIKE ?", @dropoff_station)
    end
  end

  def terms
  end

  def privacy
  end
end
