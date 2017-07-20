Rails.application.routes.draw do
	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

	get '/cart', 	to: 'carts#show'
	delete '/cart', to: 'carts#destroy'

	resources :products, 			only: [:index, :show]
	resources :cart_relationships, 	only: [:create, :destroy, :update]

end
