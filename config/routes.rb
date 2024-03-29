Rails.application.routes.draw do
  resources :marks
  resources :comments

  resources :items do 
    collection do 
      get :search
			get :my_bar
			get :my_wish
    end
		member do 
			get :edit_labels
			put :add_label
			put :remove_label
		end
		resources :comments
  end

  devise_for :users, controllers: { registrations: 'registrations' }
  resources :ingredients

  resources :recipes do 
		collection do 
			get :available
      get :labels
		end
      
		member do 
			get :edit_labels
			put :add_label
			put :remove_label
      get :fork
		end

    resources :ingredients
		resources :comments
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "recipes#index"
end
