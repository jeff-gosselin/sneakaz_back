Rails.application.routes.draw do
  namespace :api do
  	namespace :v1 do

			resources :shoppers
			resources :orders
			resources :order_items
			resources :items

  	end
  end
end
