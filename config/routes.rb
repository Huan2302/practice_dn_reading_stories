Rails.application.routes.draw do

  resources :chapters
  resources :stories

  root 'users#new'
  resources :users
end
