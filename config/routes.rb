Rails.application.routes.draw do
  devise_for :users
  resources :carts
  resources :products
  resources :profiles, only: [:new, :edit, :create, :update]

end
