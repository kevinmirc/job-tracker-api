class Api::V1::OpportunitiesController < ApplicationController
  def index
    # binding.pry
    opp = Opportunity.all.where(user_id: current_user.id)
    render json: opp
  end

  def show
    render json: opportunity
  end

  def new
    # render json: Opportunity.new
  end

  def create
    user = current_user.id
    opportunity = Opportunity.create(opportunity_params)
    opportunity.user_id = user
    opportunity.save
    render json: opportunity

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
