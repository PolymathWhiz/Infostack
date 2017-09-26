Rails.application.routes.draw do
  get 'users/show'

  resources :comments
  resources :posts
  devise_for :users
  get 'pages/home'

  get 'pages/about'

  get 'pages/feedback'

  get 'pages/privacy'

  get 'pages/terms'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
