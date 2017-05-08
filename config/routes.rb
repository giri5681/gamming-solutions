Rails.application.routes.draw do
  get 'rats/new'

  get 'rats/index'

  get 'rats/edit'

  get 'rats/show'

	namespace :api do 
		resources :users
	end
  resources :users do
  collection do 
       get 'sign_in'
       post 'signup'
       delete 'logout'
  	end
  end
  root to: "users#index" 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
