# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'products#index'

  resources :products, only: [:show]

  resources :line_items, only: %i[create destroy]

  resources :carts, only: [:index]
end
