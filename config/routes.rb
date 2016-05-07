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

	get 'vendor_request_message/message/:id' => 'vendor_request_message#message'
	resources :vendor_request_message

	get 'test_seq_step/packages' => 'test_seq_step#packages'
	resources :test_seq_step   #, :except => ['new']
	get 'test_seq_step/new/:id' => 'test_seq_step#new', as: 'new_test_seq_step2'


	get "home/index" => 'home'




	root to: 'home#splash'
end
