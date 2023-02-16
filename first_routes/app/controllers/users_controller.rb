class UsersController < ApplicationController
  def show
    render json: params
  end

  def create
    user = User.new(params.require(:name).permit(:email))
    user.save!
    render json: user
  end

  def index
    @users = User.all
    render json: @users 
  end

  def user_params
    params.require(:name).permit(:email)
  end

end