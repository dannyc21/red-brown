Rails.application.routes.draw do
  
  root 'pages#home'
  get 'pages/about', to: 'pages#about'
  get 'signup', to: 'users#new'

  resources :articles
  resources :users, except: [:new]

end
