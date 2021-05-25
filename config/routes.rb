Rails.application.routes.draw do
  get 'password_resets/new'
  get 'password_resets/edit'
  get 'users/new'
  root  'static_pages#home'
  
  get  'static_pages/home'
  #　=> staticpages#home
  #get  'static_pages/help'
  get  '/help',    to: 'static_pages#help'
  
  #get  'static_pages/about'
  get  '/about',   to: 'static_pages#about'
  #get  'static_pages/contact'
  get  '/contact', to: 'static_pages#contact'
  #root 'application#hello'
  get   '/signup',   to: 'users#new'
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
end