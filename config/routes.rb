Rails.application.routes.draw do
  resources :categories
  resources :employees
  resources :requests
  resources :assets
  resources :users, only:[:show, :create]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  post "/login", to: "session#create"
  delete "/logout", to: "session#destroy"
  post "/signup", to: "user#create"
  get "/me", to: "user#show"
end
