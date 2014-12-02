class Api::OrdersController < ApplicationController
  
  def create
    @order = current_user.orders.new(order_params)
    if @order.save
      render :show      
    else
      render json: @order.errors.full_messages, status: :unprocessable_entity
    end
  end
  
  def show
    @order = Order.find(params[:id])
    render :show
  end
  
  private
  
  def order_params
    params.require(:order).permit(
      :buyer_id,
      :gig_id,
      :gig_extra_ids => [])
  end
  
end
