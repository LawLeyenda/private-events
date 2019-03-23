Rails.application.routes.draw do
  get 'users/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #
  root 'static_pages#home'
  get '/home', to: 'static_pages#home'
  get '/events', to: 'static_pages#events'
  get '/users', to: 'static_pages#users'
  get '/about', to: 'static_pages#about'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  resources :users
end
