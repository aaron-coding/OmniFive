class GigsController < ApplicationController
  def index
    gigs = Gig.all
    
  end
end
