Rails.application.routes.draw do
  namespace :admin do
      resources :users
      resources :bookings
      resources :travelers

      root to: "users#index"
    end
  devise_for :users

  get 'home/index'
  get 'home/terms', as: "/terms"
  get 'home/privacy', as: "/privacy"

  resources :travelers, only: [:show, :new, :create]
  #resources :bookings, only: [:index, :show, :new, :create]
  root to: 'welcome#index'
end
