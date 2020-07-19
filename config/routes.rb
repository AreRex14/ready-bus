Rails.application.routes.draw do
  resources :bookings
  
  root to: 'bookings#new'
end
