class Api::GigsController < ApplicationController
  def index
    @gigs = Gig.all
    render :index
  end
  
  def show
    @gig = Gig.find(params[:id])
    render :show
  end
  
end
