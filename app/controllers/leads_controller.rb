class LeadsController < ApplicationController

  def index
    render json: Lead.all
  end

  def create
    @lead = Lead.create(lead_params)
    render json: @lead
  end

private

  def lead_params
    params.require(:lead).permit(:title, :status, :task_id, :note_id, :contact_id, :opportunity_id)
  end


end
