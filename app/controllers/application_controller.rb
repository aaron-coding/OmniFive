class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception
  helper_method :login!, :current_user, :logged_in?
  
  def login!(user)
    return nil if user.nil?
    session[:session_token] = user.reset_session_token!
  end
  
  def logout!(user)
    session[:session_token] = nil
    user.reset_session_token!
  end
  
  def current_user
    return nil if session[:session_token].nil?
    @current_user ||= User.find_by_session_token(session[:session_token])
  end
  
  def logged_in?
    !!current_user
  end
  
end
