Rails.application.routes.draw do
  devise_for :users


  root to: 'pages#index'

  get "about" => 'pages#about'
  get "contact" => 'pages#contact'


  resources :carts

  resources :products
  resources :profiles, only: [:new, :edit, :create, :update]

end
