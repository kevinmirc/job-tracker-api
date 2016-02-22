require 'pry'

class Api::V1::ContactsController < ApplicationController
  def index
    render json: Contact.all
  end

  def show
    render json: contact
  end

  def new
    # render json: Contact.new
  end

  def create
    opportunity_id = request.referrer.split("/").last.to_i
    opp = Opportunity.find(opportunity_id)
    @contact = Contact.create(contact_params)
    @contact.opportunities << opp
    @contact.save
    # find the Opp with that id
    # make the new contact, assocaite to that opp and save, then
    render json: @contact
  end

  def destroy
    render json: contact.destroy
  end

  def edit
    render json: contact
  end

  def update
    render json: contact.update(contact_params)
  end

  private

  def contact
    Contact.find(params[:id])
  end

  def contact_params
    params.require(:contact).permit(:name, :email, :phone, :opportunity_id)
  end
end
