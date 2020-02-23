Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "static_pages#home"
  resources :users, only: [:new, :create, :show]
  resources :hostels
  get '/signin', to: 'session#new'
  post '/signin', to: 'session#create'
  # get '/session', to: 'session#destroy'
  delete '/session', to: 'session#destroy'
  post '/reservations', to: 'reservations#create'
  # post '/logout' => 'session#destroy'
end
