Rails.application.routes.draw do
  devise_for :users

  get 'home/index'
  get 'home/terms'
  get 'home/privacy'

  resources :travelers, only: [:show, :new, :create]
  #resources :bookings, only: [:index, :show, :new, :create]
  root to: 'welcome#index'
end
