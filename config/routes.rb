Rails.application.routes.draw do
  devise_for :passengers
  #resources :bookings, only: [:index, :show, :new, :create]
  resources :travelers, only: [:show, :new, :create]
  
  root to: 'welcome#index'
end
