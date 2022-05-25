Rails.application.routes.draw do
  devise_for :users
  root to: 'floatdevices#index'
  resources :floatdevices, only: [:show] do
    resources :bookings, only: [:new, :create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
