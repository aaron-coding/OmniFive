class Api::LikesController < ApplicationController
  def create
    like = Like.create(gig_id: like_params[:gig_id])
    like.user_id = current_user.id
    if like.save
      render json: like
    else
      render json: like.errors.full_messages, status: :unprocessable_entity
    end
  end
  
  def destroy
    like = Like.find_by(user: current_user, gig_id: params[:gig_id])
    like.destroy
    render json: like
  end
  
  private
  
  def like_params
    params.require(:like).permit(:gig_id)
  end
end
