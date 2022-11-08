Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "users#index"

  resources :users do
    resources :invitations
    resources :notifications
    resources :posts, only: [:index, :create]
  end

  resources :posts do 
    resources :likes
    resources :comments
  end
end
