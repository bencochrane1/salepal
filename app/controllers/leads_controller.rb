class LeadsController < ApplicationController

  def index

    respond_to do |format|
      format.html
      format.json { render json: Lead.all }
      format.csv { send_data Lead.all.to_csv }
      format.xls
    end

  end

  def import
    Lead.import(params[:file])
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
    params.require(:lead).permit(:title, :status, :task_id, :note_id, :contact_id)
  end


end
