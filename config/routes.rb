Rails.application.routes.draw do
	
	resources :tags
	resources :picture_tags
	resources :pictures do
		resources :comments
	end

	post 'pictures/:id', to: 'comments#create'
	
	resources :comments 
	resources :users

	resources :sessions, only: [:create]

	post 'sessions', to: 'sessions#create'

	delete 'sessions', to: 'sessions#destroy'

	get 'signup', to: 'users#new'

	get 'login', to: 'sessions#new'
	
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
