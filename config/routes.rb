Rails.application.routes.draw do
  root to: 'pages#home'
  
  get 'pages/about'
  get 'pages/feedback'
  get 'pages/privacy'
  get 'pages/terms'
  
  devise_for :users
  
  devise_scope :users do
    resources :users, only: [:show]    
  end
  
  resources :posts do
    resources :comments
  end
end
