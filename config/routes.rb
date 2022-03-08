Rails.application.routes.draw do
  devise_for :users
  root to: 'dishes#index'

  resources :dishes, only: [:index]
  resources :restaurants, only: [:index, :new]
  get "reviews/new", to: "reviews#new"
  post "reviews", to: "reviews#create"
  patch "reviews/:id", to: "reviews#update"
  resources :pages, only: [:index]
end
