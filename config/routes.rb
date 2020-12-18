Rails.application.routes.draw do
  resources :product_in_orders
  resources :orders
  resources :products
  resources :farms
  devise_for :users
  root to: 'farms#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
