class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    before_action :authenticate_passenger!

    def after_sign_in_path_for(resource)
        new_booking_path
    end
end
