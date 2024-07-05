Rails.application.routes.draw do

  # resources :users
  # resources :projects

  # Users routes
  # get '/users' => 'users#index'

  # Posts routes
  # get '/projects' => 'projects#index'

  # Home Routes
  # get '/home' => 'home#index'
  # get '/' => 'home#index'



  resources :people do
    resources :accounts
  end


  resources :users
  resources :projects
  root 'home#index'

end
