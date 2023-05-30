Rails.application.routes.draw do
  resources :toothbrushes do
    resources :bookings, only: [:new, :create]
  end
  devise_for :users
  root to: "pages#home"
  get '/dashboard', to: "pages#dashboard"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
