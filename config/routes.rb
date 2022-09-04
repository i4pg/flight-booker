Rails.application.routes.draw do
  get 'bookings/new'
  post 'bookings/create'
  get 'bookings/:id', to: 'bookings#show', as: 'booking'
  get 'flights/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'flights#index'
end
