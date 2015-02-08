class LeadsController < ApplicationController

  def index
    render json: Lead.all
  end

  def create
    @lead = Lead.create(lead_params)
    render json: @lead
  end

  def update
    @lead = Lead.find(params[:id])
    @lead.update(lead_params)
    render json: @lead
  end

  def destroy
    @lead = Lead.find(params[:id])
    @lead.destroy
    render json: { status: "OK" }
  end

private

  def lead_params
    params.require(:lead).permit(:title, :status_id, :task_id, :note_id, :contact_id, :opportunity_id)
  end


end
