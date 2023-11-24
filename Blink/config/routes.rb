Rails.application.routes.draw do
  resources :track_types
  resources :tracks
  resources :tracked_items
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
