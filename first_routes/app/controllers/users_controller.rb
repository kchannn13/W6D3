class UsersController < ApplicationController
  def show
    render json: params
  end

  def create
    render json: params
  end

  def index
    render plain: "I'm in the index action!"
  end

end