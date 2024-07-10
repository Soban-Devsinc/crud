Rails.application.routes.draw do
  devise_for :users, :controllers =>
    { registrations: 'users/registrations',
    sessions: 'users/sessions'}


  resources :users
  resources :projects

  devise_scope :user do
    root to: 'devise/sessions#new'
  end
end
