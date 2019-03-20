Rails.application.routes.draw do
  get 'sessions/login'
  resources :items, only: [:index, :new, :create, :update]
  resources :stores, only: [:new, :create, :index, :show ]
  resources :brands, only: [:new, :create, :index ]
  root 'items#index'
  post '/login', to: 'auth#login'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
