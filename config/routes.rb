Rails.application.routes.draw do
  namespace :api do
  	namespace :v1 do

			resources :shoppers
			post '/login', to: 'auth#create'
      get '/profile', to: 'shoppers#profile'
			resources :orders
			resources :order_items
			resources :items

  	end
  end
end
