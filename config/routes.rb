Rails.application.routes.draw do
  resources :orders
  devise_for :customers
  resources :customers, except: :create
  resources :cars

  post 'create_customer' => 'customers#create', as: :create_customer

  get 'order_history' => 'orders#history'

  root 'customers#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
