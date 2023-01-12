Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "users#first"
  get "second", to: "users#second"
  # Defines the root path route ("/")
  # root "articles#index"
end
