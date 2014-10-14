Rails.application.routes.draw do
  resources :items

  root to: 'visitors#index'
  devise_for :users
  resources :users
end
