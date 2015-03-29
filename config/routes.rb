Rails.application.routes.draw do
  # get 'front/index'

  get 'userboard', to: 'userboard#index'
  devise_for :users
  root to: 'front#index'
  resources :subjects
  resources :grades
  resources :users
  resources :divisions

end
