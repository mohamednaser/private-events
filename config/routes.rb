Rails.application.routes.draw do
  post 'session/create'
  get '/login', to: 'session/new'
  post '/logout' , to: 'session/destroy'

  get "/signup", to: "user#new"
  post "/signup", to: "user#create"

  post "/signin", to: "user#create"

  get 'user/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
