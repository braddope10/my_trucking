Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/' => 'static#index'
  get '/signup' => 'users#new'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get 'auth/facebook/callback' => "sessions#fb_create"
  delete '/logout' => 'sessions#destroy'

  resources :users
  resources :jobs

  resources :trucks, only: [:index]
  resources :brokers, only: [:index]
  resources :books, only: [:index]

  resources :books, only: [:index] do #parent
    resources :jobs, only: [:show, :new, :edit] 
  end

end
