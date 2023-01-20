Rails.application.routes.draw do
  resources :categories
  resources :employees
  resources :requests
  resources :assets
  resources :users, only:[:show, :create, :index]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  post "/signup", to: "users#create"
  get "/me", to: "users#show"
  # get "/users", to: "users#index"
end
