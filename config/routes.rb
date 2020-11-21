Rails.application.routes.draw do
  resources :users do
	member do
		get :confirm_email
	end
  end
  resources :workouts
  resources :saved_workouts, only: [:create, :destroy]
  get 'users', to: "users#index"
  get 'sign_in' => 'sessions#new'
  post 'sign_in' => 'sessions#create'
  get 'sign_out'  => 'sessions#destroy'
  root 'welcome#index'
end
