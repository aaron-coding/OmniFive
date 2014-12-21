class Api::UsersController < ApplicationController
  def show 
    @user = User.includes(:gigs).find(params[:id])
    render :show
  end
  
  def update
    @user = current_user
    if @user.update(user_params)
      render :show
    else
      render json: @user.errors.full_messages, status: :unprocessable_entity
    end
    
  end
  
  private
  
  def user_params
    params.require(:user).permit(:username, :password, :creator_desc, :image_url, :email)
  end
end
