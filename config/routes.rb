Rails.application.routes.draw do
  devise_for :admins
  devise_for :users

  resources :courses

  get 'users/mycourses', to: 'courses#mycourses', as: 'mycourses_course'
  patch 'users/purchasing', to: 'courses#purchasing', as: 'purchasing_course'

  root 'homepage#index'
end
