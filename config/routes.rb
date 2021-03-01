Rails.application.routes.draw do
  get 'pages/home'
  get 'pages/contact'
  get 'pages/legalnotice'
  get 'pages/homeProductor'
  resources :product_in_orders
  resources :orders
  resources :products
  resources :farms
  devise_for :users
  root to: 'pages#home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
