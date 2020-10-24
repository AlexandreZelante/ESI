Rails.application.routes.draw do
  resources :users
  resources :workouts
  root 'welcome#index'
end
