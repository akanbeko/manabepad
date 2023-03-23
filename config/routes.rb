Rails.application.routes.draw do
  devise_for :users
  root to: "sites#index"
  resources :users, only: [:edit, :update]
  end
