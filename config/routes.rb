Rails.application.routes.draw do
  get 'sessions/new'
  get 'users/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'locations#index'

  resources :posts

  get '/register', to: 'users#new'
  resources :users, only: [:create]
  
  get '/sign_in', to: 'sessions#new'
  get '/sign_out', to: 'sessions#destroy'
  resource :sessions, only: [:create]
  
  get 'home', to: 'locations#index'

  resources :locations, only: [:show, :index, :new , :create, :edit, :update, :destroy]
end
