class Api::GigsController < ApplicationController
  def index
    @gigs = Gig.all
    render :index
  end
end
