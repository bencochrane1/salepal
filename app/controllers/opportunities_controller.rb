class OpportunitiesController < ApplicationController
  def index
    if params[:lead_id]
      render json: Opportunity.where( { lead_id: params[:lead_id] } )  
    else
      render json: Opportunity.all
    end
  end

  def create
    # @lead = Lead.find(params[:lead_id])
    # @opportunity = @lead.opportunity.create(opportunity_params)
    @opportunity = current_user.opportunities.create(opportunity_params)
    render json: @opportunity
  end

  def update
    @opportunity = Opportunity.find(params[:id])
    @opportunity.update(opportunity_params)
    render json: @opportunity
  end

  def destroy
    @opportunity = Opportunity.find(params[:id])
    @opportunity.destroy
    render json: { status: "OK" }
  end

  private

  def opportunity_params
    params.require(:opportunity).permit(:status, :confidence, :value, :frequency, :comments, :lead_id)
  end

end