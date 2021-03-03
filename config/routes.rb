Rails.application.routes.draw do
  devise_for :users
  
  get 'pages/home'
  get 'pages/contact'
  get 'pages/legalnotice'
  get 'pages/homeConsumer'
  get 'pages/homeProductor'
  get 'pages/dashboardProductor'

  resources :farms do
    resources :products
    resources :orders do
      resources :product_in_orders
    end
  end
  root to: 'pages#home'
end
