class EmailsController < ApplicationController
    def index
        if params["lead_id"]
          render json: Email.where( { lead_id: params["lead_id"] } )  
        else
          render json: Email.all
        end
    end

    def create
        @email = Email.create(email_params)
        render json: @email
    end

    def update
        @email = Email.find(params[:id])
        @email.update(email_params)
    end

    def destroy
        @email = Email.find(params[:id])
        @email.destroy
    end

    def test
        @gmail_messages = connect_to_gmail
        binding.pry
    end

    private

    def email_params
        params.require(:email).permit(:subject, :to, :from, :date_sent, :message_body, :user_id, :lead_id)
    end
end