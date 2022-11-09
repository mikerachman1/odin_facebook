Rails.application.routes.draw do
  devise_for :users

  root "users#index"

  resources :users do
    resources :invitations
    resources :notifications
    resources :posts, only: [:index, :create]
    resources :profiles
  end

  resources :posts do 
    resources :likes
    resources :comments
  end


end
