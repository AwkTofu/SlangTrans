Rails.application.routes.draw do
  resources :slang_books
  resources :books
  resources :definitions
  resources :slangs
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/", to: "users#index", as: "main_menu"
  get "/login", to:"users#login", as: "login"
  post '/login' => 'users#create'
  post '/logout' => 'users#destroy'
end
