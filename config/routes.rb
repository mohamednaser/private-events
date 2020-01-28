# frozen_string_literal: true

Rails.application.routes.draw do
  post '/login', to: 'session#create'
  get '/login', to: 'session#new'

  get '/signup', to: 'user#new'
  post '/signup', to: 'user#create'

  post '/logout', to: 'session#destroy'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
