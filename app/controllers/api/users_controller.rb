class Api::UsersController < ApplicationController
  def show 
    @user = User.includes(:gigs).find(params[:id])
    render :show
  end
end
