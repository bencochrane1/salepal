class EmailsController < ApplicationController
    def index
        if params["lead_id"]
          render json: current_user.emails.where( { lead_id: params["lead_id"] } )  
        else
          render json: current_user.emails.all
        end
    end

    def create
        @email = current_user.emails.create(email_params)
        render json: @email
    end

    def update
        @email = current_user.emails.find(params[:id])
        @email.update(email_params)
    end

    def destroy
        @email = current_user.emails.find(params[:id])
        @email.destroy
    end

    private

    def email_params
        params.require(:email).permit(:subject, :to, :from, :date_sent, :message_body, :user_id, :lead_id)
    end
end