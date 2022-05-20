Rails.application.routes.draw do
  resources :comments
  resources :items do 
    collection do 
      get :search
    end
  end
  devise_for :users
  resources :ingredients
  resources :recipes do 
    resources :ingredients
		resources :comments
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "recipes#index"
end
