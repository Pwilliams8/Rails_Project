Rails.application.routes.draw do

  get 'sessions/new'

  resources :posts

  root 'posts#index'
end
