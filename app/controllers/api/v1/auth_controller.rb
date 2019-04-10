class Api::V1::AuthController < ApplicationController
	skip_before_action :authorized, only: [:create]

	def create
		@shopper = Shopper.find_by(username: shopper_login_params[:username])

		if @shopper && @shopper.authenticate(shopper_login_params[:password])
			token = encode_token({shopper_id: @shopper.id})
			render json: {shopper: ShopperSerializer.new(@shopper), jwt: token}, status: :accepted
		else
			render json: { message: 'Invalid username or password'}, status: :unauthorized
		end
	end

	private

	def shopper_login_params
		params.require(:shopper).permit(:username, :password)
	end
end
