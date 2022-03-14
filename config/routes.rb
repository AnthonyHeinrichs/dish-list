Rails.application.routes.draw do
  devise_for :users
  root to: 'dishes#index'

  resources :dishes, only: [:index] do
    get "favorite", to: "dishes#favorite"
    delete "favorite", to: "favorite_dishes#destroy"
  end
  resources :restaurants, only: [:index, :new, :create, :edit, :update] do
    get "favorite", to: "restaurants#favorite"
    delete "favorite", to: "favorite_restaurants#destroy"
  end
  resources :users, only: [:show]
  resources :reviews, only: [:new, :create]
end
