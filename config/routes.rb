Rails.application.routes.draw do
  devise_for :users
  root to: 'subjects#index'
  resources :subjects
  resources :grades
  resources :users
  resources :divisions
end
