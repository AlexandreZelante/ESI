Rails.application.routes.draw do
  resources :users
  resources :workouts
  resources :saved_workouts, only: [:create, :destroy]
  get 'sign_in' => 'sessions#new'
  post 'sign_in' => 'sessions#create'
  get 'sign_out'  => 'sessions#destroy'
  root 'welcome#index'
end
