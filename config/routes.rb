Rails.application.routes.draw do
  # get 'front/index'

  devise_for :users
  root to: 'front#index'
  resources :subjects
  resources :grades
  resources :users
end
