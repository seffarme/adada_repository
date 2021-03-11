Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :transports do
    resources :bookings, only: [:new, :create]
    collection do
      get :random
    end
  end


  resources :users, only: [:show]
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  end
