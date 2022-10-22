Rails.application.routes.draw do
  get '/home', to: 'static_pages#home'
  get '/fetch_photos', to: 'static_pages#fetch_photos'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'static_pages#home'
end
