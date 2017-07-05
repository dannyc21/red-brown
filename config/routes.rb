Rails.application.routes.draw do
  
  root 'pages#home'
  get 'pages/about', to: 'pages#about'
  get 'pages/search', to: 'pages#search'
  get 'signup', to: 'users#new'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  resources :articles
  resources :users, except: [:new]
  resources :categories, except: [:destroy]

end
