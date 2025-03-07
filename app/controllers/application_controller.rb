class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    before_action :authenticate_user!

    def after_sign_in_path_for(resource)
        if current_user.admin_role?
          admin_users_path
        else
          new_traveler_path
        end
    end
end
