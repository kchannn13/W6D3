Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # resources :users
  get '/users/:id', to: 'users#show', as: 'user'
  get '/users', to: 'users#index'
  get '/users/new', to: 'users#new'
  post '/user', to: 'users#create'
  get '/user/:id/edit', to: 'users#edit'
  patch '/user/:id', to: 'users#update'
  put '/user/:id', to: 'users#update'
  delete '/user/:id', to: 'users#destroy'

  # get 'users/:id', to: 'users#show', as: 'user'
  # get 'users', to: 'users#index'
  # get 'users/new', to: 'users#new'
  # post 'user', to: 'users#create'
  # get 'user/:id/edit', to: 'users#edit'
  # patch 'user/:id', to: 'users#update'
  # put 'user/:id', to: 'users#update'
  # delete 'user/:id', to: 'users#destroy'
end
