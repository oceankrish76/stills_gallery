Rails.application.routes.draw do
  devise_for :users
  resources :photo_attachments
  resources :photos
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'photos#index'
end
