Rails.application.routes.draw do
  resources :track_items
  resources :daily_data
  resources :tracks
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
