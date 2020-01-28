Rails.application.routes.draw do
  get "/signup", to: "user#new"
  post "/signup", to: "user#create"

  get 'user/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
