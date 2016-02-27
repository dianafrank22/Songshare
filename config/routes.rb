Rails.application.routes.draw do
  resources :users
  

  get '/', to: 'users#index'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#show'
  post 'login', to: 'users#login'
  post 'logout', to: 'users#logout'


end
