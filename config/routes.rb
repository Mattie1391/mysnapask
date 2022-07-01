Rails.application.routes.draw do
  devise_for :admins
  devise_for :users

  resources :courses do
    member do
      get :mycourses
      patch :purchasing
    end
  end

  root 'homepage#index'
end
