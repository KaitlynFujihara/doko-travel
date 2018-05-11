Rails.application.routes.draw do

  devise_for :admins, path: 'admin' 
  devise_for :users, controllers: { registrations: "registrations" }

  root :to => 'welcomes#index'
  resources :welcomes
  resources :welcome
  resources :main
  resources :add_destinations

  resources :accounts do
    resources :preferences
  end
  get '/sign_up' => 'users#new'
  post '/users' => 'users#create'

  get '/sign_in' => 'sessions#new'
  post '/sign_in' => 'sessions#create'
  get 'sign_out' => 'sessions#destroy'
end
