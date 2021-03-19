Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  root to: 'user_infos#index'
  resources :user_infos, only: [:index,:new,:create,:update,:edit]
  resources :users, only: [:show]
end
