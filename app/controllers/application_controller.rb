class ApplicationController < ActionController::Base

    before_action :configure_permitted_parameteres, if: :devise_controller?

    def configure_permitted_parameteres
    end
end
