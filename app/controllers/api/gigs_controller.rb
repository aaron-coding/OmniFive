class Api::GigsController < ApplicationController
  def index
    @gigs = Gig.all
    render :index
  end
  
  def show
    @gig = Gig.includes(:creator, :extras).find(params[:id])
    render :show
  end
  
  def create
    @gig = current_user.gigs.new(gig_params)
    @gig.price = 5
    if @gig.save 
      render json: @gig
    else 
      render json: @gig.errors.full_messages, status: :unprocessable_entity
    end  
  end
  
  private
  
  def gig_params
    params.require(:gig).permit(:description, :image_url, :title)
  end
  
end
