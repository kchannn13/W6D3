class UsersController < ApplicationController
  def show
    render json: params
  end

  def create
    new_user = User.new(params.require(:users).permit(:name, :email))
    new_user.save!
    render json: new_user
  end

  def index
    @users = User.all
    render json: @users 
  end

end