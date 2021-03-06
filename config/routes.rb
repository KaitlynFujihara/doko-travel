Rails.application.routes.draw do

  devise_for :admins, path: 'admin'
  devise_for :users, controllers: { registrations: "registrations" }

  root :to => 'home#index'
  resources :welcome
  resources :main
  resources :cities
  resources :interests
  resources :itineraries do
    member do
         put "like" => "itineraries#upvote"
       end
    end
  resources :accounts do
    resources :preferences
  end
  get '/sign_up' => 'users#new'
  post '/users' => 'users#create'

  get '/sign_in' => 'sessions#new'
  post '/sign_in' => 'sessions#create'
  get 'sign_out' => 'sessions#destroy'
end
