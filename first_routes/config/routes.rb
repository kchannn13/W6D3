Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # resources :users
  get '/users/:id', to: 'users#show', as: 'user'
  get '/users', to: 'users#index'
  get '/users/new', to: 'users#new'
  post '/users', to: 'users#create'
  get '/users/:id/edit', to: 'users#edit'
  patch '/users/:id', to: 'users#update'
  put '/users/:id', to: 'users#update'
  delete '/users/:id', to: 'users#destroy'

  get 'artworks/:id', to: 'artworks#show', as: 'artwork'
  get 'artworks', to: 'artworks#index'
  get 'artworks/new', to: 'artworks#new'
  post 'artworks', to: 'artworks#create'
  get 'artworks/:id/edit', to: 'artworks#edit'
  patch 'artworks/:id', to: 'artworks#update'
  put 'artworks/:id', to: 'artworks#update'
  delete 'artworks/:id', to: 'artworks#destroy'

  resources :users do
    resources :artworks, only: [:index]
  end

  resources :artworks do
    resources :users, only: [:index]
  end
end
