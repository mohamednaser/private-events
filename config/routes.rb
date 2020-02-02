# frozen_string_literal: true

Rails.application.routes.draw do
  post '/login', to: 'session#create'
  get '/login', to: 'session#new'

  get '/signup', to: 'user#new'
  post '/signup', to: 'user#create'

  post '/logout', to: 'session#destroy'

  get '/events', to: 'event#index'
  get '/events/new', to: 'event#new'
  post '/events/new', to: 'event#create'
  delete '/events/{id}', to: 'event#destroy'
  get '/events/:id', to: 'event#show'
  get '/events/attend/:id', to: 'event#attend'
  get '/events/cancel/:id', to: 'event#cancel_attend'


  get '/profile', to: 'user#show'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
