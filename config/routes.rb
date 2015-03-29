Rails.application.routes.draw do
  # get 'front/index'

  devise_for :users
  root to: 'front#index'
  resources :subjects
  resources :grades
  get '/teacher_grades', to: 'grades#teacher_grades'
  get '/my_grades', to: 'grades#user_grades'
  resources :users
  resources :divisions
end
