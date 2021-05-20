Rails.application.routes.draw do
  get '/driversandcars/', to: "home_page#driversandcars" 
  get '/driversandcars/car/:id', to: "home_page#show_car" 
  get '/driversandcars/driver/:id', to: "home_page#show_driver" 
  resources :articles
  resources :cars
  resources :drivers

  root "home_page#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
