Rails.application.routes.draw do

  root 'home#index'
  # get '/auth/github', as: :github_login

  get '/auth/:provider/callback', to: 'sessions#create'
  
  resources :dashboard

  # delete '/logout', to: 'sessions#destroy'

end
