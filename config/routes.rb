Rails.application.routes.draw do
  root to: "home#index"
  get 'home/index'
  devise_for :clients, controllers: {
    sessions: 'clients/sessions',
    passwords: 'clients/passwords',
    registrations: 'clients/registrations'
  }
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }
  resources :clients, only: [:show]
  resources :users, only: [:index, :show]
  resources :jobs do
    resources :entries, only: [:index, :create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
