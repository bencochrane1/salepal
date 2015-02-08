class ContactsController < ApplicationController
  def index
    render json: Contact.all
  end

  def create
    @contact = Contact.create(contact_params)
    render json: @contact
  end

  def update
    @contact = Contact.find(params[:id])
    @contact.update(contact_params)
  end

  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy
    render json: { status: "OK" }
  end

  private 

  def contact_params
    params.require(:contact).permit(:name, :title, :mobile_number, :office_number, :email, :url)
  end

end