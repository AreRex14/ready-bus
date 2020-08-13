Rails.application.routes.draw do
  namespace :admin do
      resources :users
      resources :operators
      resources :buses
      resources :seats
      resources :stations
      resources :schedules
      resources :bookings
      resources :travelers

      root to: "users#index"
    end
  devise_for :users

  get '/search', to: "home#index"
  get '/schedule', to: "home#search"
  get '/terms', to: "home#terms"
  get '/privacy', to: "home#privacy"

  resources :travelers, only: [:show, :new, :create]
  resources :bookings, only: [:show, :new, :create]
  root to: 'welcome#index'
end
