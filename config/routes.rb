Rails.application.routes.draw do
  devise_for :users
  root to: 'user_infos#index'
  resources :user_infos, only: [:index,:new,:create,:update,:edit]
end
