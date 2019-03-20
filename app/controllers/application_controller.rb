class ApplicationController < ActionController::API
	before_action :authorized

	def encode_token(payload)
		JWT.encode(payload, 'sz76_19')
	end

	def auth_header
		request.headers['Authorization']
	end

	def decoded_token
		if auth_header
      token = auth_header.split(' ')[1]
      begin
        JWT.decode(token, 'sz76_19', true, algorithm: 'HS256')
      rescue JWT::DecodeError
        nil
      end
    end
  end

	def current_shopper
		if decoded_token
			shopper_id = decoded_token[0]['shopper_id']
			@shopper = Shopper.find_by(id: shopper_id)
		end
	end

	def logged_in?
    !!current_shopper
  end

	def authorized
    render json: { message: 'Please log in' }, status: :unauthorized unless logged_in?
  end
end
