class Api::V1::UsersController < ApplicationController
  def index
    render json: User.all
  end

  def show
    render json: user
  end

  # def new
  #   # render json: User.new
  # end

  def create
    render json: User.create(user_params)
  end

  def destroy
    render json: user.destroy
  end

  def edit
    render json: user
  end

  def update
    render json: user.update(user_params)
  end

  private

  def user
    User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password_digest, :avatar)
  end
end
