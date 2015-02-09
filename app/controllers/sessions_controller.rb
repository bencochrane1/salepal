class SessionsController < ApplicationController
    layout false

    def new
    end

    def create
        @auth = request.env['omniauth.auth']['credentials']
    end

    # def after_sign_in_path_for
    #     root_path
    # end

end




# class ApplicationController < ActionController::Base
#   def after_sign_in_path_for(resource)
#     request.env['omniauth.origin'] || stored_location_for(resource) || root_path
#   end
# end