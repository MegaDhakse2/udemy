Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "users#first"
  resources :users
  get "contact", to: "users#index"
  get "signup", to: "users#new"
  post "signup", to: "users#create"
  # Defines the root path route ("/")
  # root "articles#index"
end
