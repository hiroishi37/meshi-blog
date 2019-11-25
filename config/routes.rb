Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users
  root to: "meshis#index"
  resources :users, only: [:edit, :update]
  resources :meshis, only: [:new, :create, :edit, :update] do
    resources :comments, only: [:index, :create]
  end
end