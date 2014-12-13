class Api::LikesController < ApplicationController
  def create
    like = Like.new(params[:gig_id])
    like.user_id = current_user.id
    if like.save
      render json: like
    else
      render json: like.errors.full_messages, status: :unprocessable_entity
    end
  end
  
  def destroy
    like = Like.find()
  end
  
  private
  
  def like_params
    params.require(:like).permit(:gig_id)
  end
end
