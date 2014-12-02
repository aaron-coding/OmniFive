class SessionsController < ApplicationController
  
  def create
    user = User.find_by_credentials(
      params[:user][:username],
      params[:user][:password] 
    )
    if user #this method uses params
      login!(user)
      redirect_to root_url
    else
      flash[:errors] = ["Invalid Username and/or Password. Try again"]
      redirect_to new_session_url
    end
    
  end
  
  def destroy
    logout!(current_user)
    redirect_to new_session_url
  end
  
  private
  
  def session_params
    params.require(:user).permit(:username, :password)
  end
  
end
