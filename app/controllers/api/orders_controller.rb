class Api::OrdersController < ApplicationController
  
  def create
    @order = Order.new(order_params)
    if @order.save
      login!(user)
    else
      flash[:errors] = @order.errors.full_messages
    end
    render :show
  end
  
  def show
    @order = Order.find(params[:id])
    render :show
  end
  
  private
  
  def order_params
    params.require(:order).permit(:buyer_id, :gig_id)
  end
  
end
