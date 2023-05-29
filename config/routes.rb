Rails.application.routes.draw do
  get 'booking/new'
  get 'toothbrush/index'
  get 'toothbrush/show'
  get 'toothbrush/new'
  get 'toothbrush/edit'
  get 'toothbrush/update'
  get 'toothbrush/destroy'
  get 'toothbrush/create'
  devise_for :users
  root to: "pages#home"
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
