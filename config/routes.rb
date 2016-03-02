Rails.application.routes.draw do
  resources :users
  resources :recs
  resources :tags
  resources :sessions
  resources :current_favs

  get '/', to: 'users#home'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#show'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

end
