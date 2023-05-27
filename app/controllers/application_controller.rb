class ApplicationController < ActionController::Base

    before_action :configure_permitted_parameteres, if: :devise_controller?
    protect_from_forgery with: :exception # help to generate, encrypt and descrypt CSRF tooken 
# protect_from_forgery is defined RequestForgeryProtection concern 
    def configure_permitted_parameteres
    end
end
