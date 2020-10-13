Rails.application.routes.draw do
  get 'users/new'
  get 'users/show'
  resources :users
  resources :workouts
  root 'welcome#index'
end
