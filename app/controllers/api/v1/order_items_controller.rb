class Api::V1::OrderItemsController < ApplicationController
	def index
		@order_items = OrderItem.all
		render json: @order_items
	end

	def show
		@order_item = OrderItem.find(params[:id])
		render json: @order_item
	end

	def create
		@order_item = OrderItem.create(order_item_params)
		render json: @order_item
	end

	def update
		order_item = OrderItem.find(:id)
		order_item.update(order_item_params)
		render json: order_item
	end

	def destroy
  @order_item = OrderItem.find(params[:id])
  @order_item.destroy
	if @order_item.valid?
     render :json=> @order_item, status: :created
   else
     render json: {error: 'failed to delete job'}, status: :not_acceptable
   end
	end

	private

	def order_item_params
		params.require(:order_item).permit(:order_id, :item_id, :qty, :size, :total, :image, :color)
	end
end
