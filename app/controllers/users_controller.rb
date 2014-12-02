class UsersController < ApplicationController
  
  def create
    user = User.new(user_params)
    if user.save
      login!(user)
      redirect_to root_url
    else
      flash[:errors] = user.errors.full_messages
      redirect_to new_user_url
    end
  end
  
  def destroy
    user = current_user
    user.destroy
    redirect_to new_user_url
  end
  
  def new
    render :new
  end

  private
  
  def user_params
    params.require(:user).permit(:username, :password)
  end
end
