Rails.application.routes.draw do
  get 'errors/not_found'
  # get 'users/show'
  # get 'homes/index'
  resources :bookings, except: [:index , :new]
  resources :booking_types
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  authenticated :user do
    root to: 'homes#dashboard', as: 'authenticated_root'
  end
  
  get ':booking_link', to: 'users#show', as: 'user'
  get 'free/event', to: 'users#free_event', as: 'free_event'

  scope '/:booking_link', as: 'user' do
    resources :bookings, only: [:new, :index]
  end

  root to: 'homes#index', as: 'default_root'
end
