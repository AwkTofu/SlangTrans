Rails.application.routes.draw do
  resources :slang_books
  resources :books
  resources :definitions
  resources :slangs
  resources :users, only: [:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/", to: "users#index", as: "main_menu"

  #to the log in form
  get "/login", to:"sessions#login", as: "login"
  #This is where the log in validation checks
  post '/login' => 'sessions#create'
  #This is to delete the cookie
  post '/logout' => 'sessions#destroy'
  get '/signup', to: "users#new", as: "new_user"
  post "/", to: "users#create"

  get '/search', to: "slangs#search", as: "search_slang"
end
