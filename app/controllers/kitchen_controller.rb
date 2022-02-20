class KitchenController < ApplicationController
  def index
    @orders = Order.where(status: [0,1,2]).order(:status)
  end

  def view_order
    @order = Order.where(id: params[:id]).first
  end

  def report_status
    @order = Order.where(id: params[:id]).first
    @order.update(status: params[:status])
    redirect_to kitchen_view_order_path(@order.id)
  end
end
