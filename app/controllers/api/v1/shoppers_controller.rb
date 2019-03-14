class Api::V1::ShoppersController < ApplicationController
	def index
		@shoppers = Shopper.all
		render json: @shoppers
	end

	def show
		@shopper = Shopper.find(params[:id])
		render json: @shopper
	end

	def create
		@shopper = Order.create(shopper_params)
		render json: @shopper
	end

	def update
		shopper = Shopper.find(:id)
		shopper.update(shopper_params)
		render json: shopper
	end

	private

	def shopper_params
		params.require(:shoppers).permit(:username, :password_digest, :email, :shipping_address, :billing_address)
	end
end
