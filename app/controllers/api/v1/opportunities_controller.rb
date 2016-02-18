class Api::V1::OpportunitiesController < ApplicationController
  def index
    render json: Opportunity.all
  end

  def show
    render json: opportunity
  end

  def new
    # render json: Opportunity.new
  end

  def create
    render json: Opportunity.create(opportunity_params)
  end

  def destroy
    render json: opportunity.destroy
  end

  def edit
    render json: opportunity
  end

  def update
    render json: opportunity.update(opportunity_params)
  end

  private

  def opportunity
    Opportunity.find(params[:id])
  end

  def opportunity_params
    params.require(:opportunity).permit(:name, :position, :description)
  end
end