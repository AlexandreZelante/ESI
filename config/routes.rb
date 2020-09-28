Rails.application.routes.draw do
  resources :workouts
  root 'welcome#index'
end
