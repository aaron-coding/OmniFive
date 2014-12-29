class Api::ReviewsController < ApplicationController
  
  def index
    if params[:gig_id]
      @reviews = Gig.find(params[:gig_id]).reviews
    elsif params[:user_id] 
      @reviews = User.find(params[:user_id]).reviews
    end
    render json: @reviews
  end
  
  private
  
  def reviews_params
    params.require(:review).permit(:gig_id, :user_id)
  end
end
