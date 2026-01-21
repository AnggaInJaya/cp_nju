Rails.application.routes.draw do
  get 'services/index'
  # devise_for :admin_users, ActiveAdmin::Devise.config
  # ActiveAdmin.routes(self)
  #
  namespace :cms do
    get    '/login',  to: 'sessions#new'
    post   '/login',  to: 'sessions#create'
    delete '/logout', to: 'sessions#destroy'

    root to: 'products#index'
    resources :products
    resources :banners
    resources :abouts
  end

  resources :products, only: %i[index show]
  resources :categories, only: %i[index show]
  resources :services, only: %i[index show]
  resources :abouts, only: %i[index show]
  resources :home, only: [:index]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get 'up' => 'rails/health#show', as: :rails_health_check

  # Defines the root path route ("/")
  root 'home#index'
end
