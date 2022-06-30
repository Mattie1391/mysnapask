Rails.application.routes.draw do
  devise_for :admins
  devise_for :users

  resources :courses

  root 'homepage#index'
end
