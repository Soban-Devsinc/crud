Rails.application.routes.draw do

  resources :users
  resources :projects
  root 'home#index'

end
