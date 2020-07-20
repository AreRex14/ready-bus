Rails.application.routes.draw do
  devise_for :passengers
  resources :bookings, only: [:index, :show, :new, :create]
  resources :travelers, only: [:show, :new, :create]
  resources :payments
  
  root to: 'welcome#index'
end
