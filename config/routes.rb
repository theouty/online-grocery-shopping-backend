Rails.application.routes.draw do
  resources :items, only: [:index, :show]
  resources :cart_items, only: [:index, :create, :update, :destroy]
  resources :users, only: [:show, :create, :update, :destroy]
  post '/auth', to: 'auth#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
