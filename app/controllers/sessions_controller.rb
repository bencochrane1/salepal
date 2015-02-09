class SessionsController < ApplicationController
    layout false

    def new
    end

    def create
        @auth = request.env['omniauth.auth']['credentials']
    end
end