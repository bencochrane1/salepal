class OpportunitiesController < ApplicationController
  def index
    render json: Opportunity.all
  end

  def create
    @opportunity = Opportunity.create(opportunity_params)
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
    params.require(:opportunity).permit(:status, :confidence, :value, :frequency, :comments, :user_id, :lead_id)
  end

end