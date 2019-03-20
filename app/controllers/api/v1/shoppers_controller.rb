class Api::V1::ShoppersController < ApplicationController
	skip_before_action :authorized, only: [:create]

	def profile
		render json: {shopper: ShopperSerializer.new(current_shopper)}, status: :accepted
	end

	def index
		@shoppers = Shopper.all
		render json: @shoppers
	end

	def show
		@shopper = Shopper.find(params[:id])
		render json: @shopper
	end

	def create
		@shopper = Shopper.create(shopper_params)
		if @shopper.valid?
			@token = encode_token({shopper_id: @shopper.id})
			render json: { shopper: ShopperSerializer.new(@shopper), jwt: @token},
			status: :created
		else
			render json: { error: 'failed to create user' }, status: :not_acceptable
		end
	end

	# def update
	# 	shopper = Shopper.find(:id)
	# 	shopper.update(shopper_params)
	# 	render json: shopper
	# end

	private

	def shopper_params
		params.require(:shopper).permit(:username, :password, :email, :shipping_address, :billing_address)
	end
end
