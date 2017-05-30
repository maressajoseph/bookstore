Rails.application.routes.draw do
  devise_for :users
  resources :products do
    resources :carts, only: [:new]
  end

  resources :carts, only: [:index, :destroy]
  resources :profiles, only: [:new, :edit, :create, :update]

end
