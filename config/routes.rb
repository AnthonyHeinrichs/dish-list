Rails.application.routes.draw do
  devise_for :users
  root to: 'dishes#index'

  resources :dishes, only: [:index]
  resources :restaurants, only: [:index]
end
