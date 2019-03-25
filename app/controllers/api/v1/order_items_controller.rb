class Api::V1::OrderItemsController < ApplicationController
	def index
		@order_items = OrderItem.all
		render json: @order_items
	end

	def show
		@order_item = Order.find(params[:id])
		render json: @order_item
	end

	def create
		@order_item = Order.create(order_item_params)
		render json: @order_item
	end

	def update
		order_item = Shopper.find(:id)
		order_item.update(order_item_params)
		render json: order_item
	end

	def destroy
  @order_item = OrderItem.find(params[:id])
  @order_item.destroy
	end

	private

	def order_item_params
		params.require(:order_item).permit(:order_id, :item_id, :qty, :size, :total, :image, :color)
	end
end
