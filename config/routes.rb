Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/' => 'static#index'
  get '/signup' => 'users#new'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  resources :users
  resources :jobs

  resources :trucks, only: [:index]
  resources :brokers, only: [:index]

  resources :dates, only: [:index] do
    resources :jobs, only: [:show]
  end

end
