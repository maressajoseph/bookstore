Rails.application.routes.draw do
  devise_for :users

  resources :products
  resources :profiles, only: [:new, :edit, :create, :update]
end
