Rails.application.routes.draw do
  devise_for :users
  resources :products do
    resources :carts
  end
  resources :profiles, only: [:new, :edit, :create, :update]

end
