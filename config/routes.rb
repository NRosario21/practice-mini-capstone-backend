Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  get "/api_movies" => "api_movie#index"
  get "/movies" => "movies#index"
  post "/favorites" => "favorites#create"
  post "/movies" => "movies#create"
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"
  patch "/movies/:id" => "movies#update"
  patch "/movies/:id/favorite" => "movies#toggle_favorite"
  delete "/movies/:id" => "movies#destroy"
  delete "/favorites/:id" => "favorites#destroy"

  # Defines the root path route ("/")
  # root "posts#index"
end
