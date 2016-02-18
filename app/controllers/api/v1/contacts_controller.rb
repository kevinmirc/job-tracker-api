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
    render json: Contact.create(contact_params)
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
    params.require(:contact).permit(:name, :email, :phone)
  end
end