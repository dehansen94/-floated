Rails.application.routes.draw do
  devise_for :users
  root to: 'floatdevices#index'
  get '/profile', to: 'pages#profile'

  resources :floatdevices, only: [:show, :new, :create, :index] do
    resources :bookings, only: [:new, :create]
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
