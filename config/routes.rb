Rails.application.routes.draw do
  resources :items, only: [:index, :show]
  resources :cart_items, only: [:create, :update,:destroy]
  resources :users, only: [:show, :create, :update, :destroy]
  post '/auth', to: 'auth#create'
 
  get '/cart_items/:user_id', to: 'cart_items#index'
  delete '/cart_items/destroy_all/:user_id', to: 'cart_items#destroy_all'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
