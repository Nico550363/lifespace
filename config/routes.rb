Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#index'
  resources :pages do
    resources :comments, only: [:create]
  end
  resources :users, only: [:show]
end
