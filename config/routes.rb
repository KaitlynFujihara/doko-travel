Rails.application.routes.draw do
  devise_for :users

  root :to => 'welcomes#index'
  resources :welcomes
  resources :main

  get '/sign_up' => 'users#new'
  post '/users' => 'users#create'

  get '/sign_in' => 'sessions#new'
  post '/sign_in' => 'sessions#create'
  get 'sign_out' => 'sessions#destroy'
end
