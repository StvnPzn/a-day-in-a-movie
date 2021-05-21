Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :bookings, only: [:index, :update]
  resources :props do
    resources :bookings, only: :create
  end

  get "dashboards", to: "dashboards#index"
end
