Rails.application.routes.draw do
  root :to => 'welcomes#index'
  resources :welcomes
  resources :main
end
