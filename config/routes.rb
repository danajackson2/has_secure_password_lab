Rails.application.routes.draw do
  resources :users, only:[:create, :new]
  resources :sessions, only:[:create, :new]
  get '/signup', to: 'users#new', as: 'signup'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/users/:id/home', to: 'users#home', as: 'home'
  post '/logout', to: 'sessions#destroy', as: 'logout'
end
