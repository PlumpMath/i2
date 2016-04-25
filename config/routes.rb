Rails.application.routes.draw do
	namespace :admin do
		resources :users
		root to: "users#index"
	end

	#root to: 'visitors#index'

	devise_for :users
	resources :users
	resources :vendors
	resources :test_sequence

	get "home/index"

	root to: 'home#splash'
end
