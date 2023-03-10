class UsersController < ApplicationController
  def index
    # render plain: "I'm in the index action!"
   
  # render json: Artwork.find(params[:id])
  # debugger
  if params[:artwork_id]
    art = Artwork.find(params[:artwork_id])
    render json: art.artist
  else
    render json: User.all 
  end
end

  def create

    user = User.new(user_params)
    if user.save
      render json: user
    else
      render json: user.errors.full_messages, status: :unprocessable_entity
    end
  end

  def show
    render json: User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    if user.update(user_params)
      render json: user
    else
      render json: user.errors.full_messages, status: :unprocessable_entity
    end
  end
  
  def destroy
    user = User.find(params[:id])
    user.destroy
    render json: user
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end
end