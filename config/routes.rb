Rails.application.routes.draw do
  devise_for :users
  resources :categories
  resources :products
  resources :users
  root to: 'home#index'
end
