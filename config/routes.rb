Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#index'
  resources :pages do
    resources :comments, only: [:create]
  end
  resources :users, only: [:show]

# 使わなくなったやつはコメントアウトしていく
#   get     'pages'            =>  'pages#index'
#   get     'pages/new'        =>  'pages#new' 
#   post    'pages'            =>  'pages#create'
#   delete  'pages/:id'        =>  'pages#destroy'
#   patch   'pages/:id'        =>  'pages#update'
#   get     'pages/:id/edit'   =>  'pages#edit'
#   get     'users/:id'        =>  'users#show'

  get 'pages/test'  =>  'pages/test'
end
