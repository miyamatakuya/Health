Rails.application.routes.draw do
  devise_for :users
  post '/users/guest_sign_in', to: 'users#guest_sign_in'
  get 'user_infos/bmi'
  root to: 'user_infos#index'
  resources :user_infos, only: [:index,:new,:create,:destroy]
  resources :users, only: [:show]
end
