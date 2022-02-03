Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'home#index'

  get 'home', to: 'home#index'

  resources :locations, only: [:show, :index, :new , :create]
end
