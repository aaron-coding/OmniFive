class Api::LikesController < ApplicationController
  def create
    like = current_user.likes.new(gig_id: like_params[:gig_id])
    if like.save
      render json: like
    else
      render json: like.errors.full_messages, status: :unprocessable_entity
    end
  end
  
  def destroy    
    like = current_user.likes.find_by(gig_id: like_params[:gig_id])
    like.destroy
    render json: like
  end
  
  private
  
  def like_params
    params.require(:like).permit(:gig_id)
  end
end
