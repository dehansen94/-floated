Rails.application.routes.draw do
  devise_for :users
  root to: 'floatdevices#index'
  get '/profile', to: 'pages#profile'

  resources :floatdevices, only: [:show, :new, :create, :index, :destroy] do
    resources :bookings, only: [:new, :create]
  end

  patch "bookings/:id/decline", to: "bookings#decline", as: :decline
  patch "bookings/:id/accept", to: "bookings#accept", as: :accept

  resources :bookings, only: [:index, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
