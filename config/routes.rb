Rails.application.routes.draw do
  get 'sites/index'
  devise_for :users
  root "sites#index"
  end
