class Api::V1::UsersController < ApplicationController
  skip_before_action :authenticate!, only: [:create]

  def index
    render json: User.all
  end

  def show
    render json: user
  end

  def me
    cu = {user: current_user}
    render json: cu
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
    render json: user.update(account_update_params)
  end

  private

  def user
    User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :avatar, :attachment)
  end

  def account_update_params
    params.require(:user).permit(:first_name, :last_name, :email, :avatar, :attachment, :current_password, :password, :password_confirmation)
  end
end
