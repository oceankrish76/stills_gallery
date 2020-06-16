Rails.application.routes.draw do
  #get '/users/:id', to: 'users#show', as: :user
  devise_for :users, controllers: {
    registrations: 'registrations'
  }
  #devise_for :users, :path_prefix => 'd'
  resources :photo_attachments
  resources :photos
  resources :users
  #resources :users, :only =>[:show]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'photos#index'
  #match '/users/:id', to: 'users#show', via: 'get'
end
