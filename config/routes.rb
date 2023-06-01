Rails.application.routes.draw do
  # get 'homes/index'
  resources :bookings
  resources :booking_types
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  authenticated :user do
    root to: 'homes#dashboard', as: 'authenticated_root'
  end
  
  root to: 'homes#index'
end
