class WelcomeController < ApplicationController
  skip_before_action :authenticate_passenger!, :only => [:index]
  
  def index
  end
end
