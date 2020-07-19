Rails.application.routes.draw do
  devise_for :passengers
  resources :bookings
  
  root to: 'welcome#index'
end
