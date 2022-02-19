Rails.application.routes.draw do
  devise_for :users
  resources :categories
  resources :products
<<<<<<< HEAD
  resources :users
=======
  namespace :admin do
    resources :employees do
      post :activate, on: :member
    end
  end
>>>>>>> 28c89f30d5af4d19311bcae4626dbdb330dd5540
  root to: 'home#index'
end
