Rails.application.routes.draw do
  resources :lessons
  resources :schedules
  
  
  resources :lessons do
    resources :schedules
  end
  
  resources :pterms
  resources :modes
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  get 'welcome/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "welcome#index"
end
