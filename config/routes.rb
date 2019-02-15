Rails.application.routes.draw do
  resources :items, only: [:index, :new, :create, :update]
  resources :stores, only: [:new, :create, :index, :show ]
  resources :brands, only: [:new, :create, :index ]
  root 'items#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
