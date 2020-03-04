Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#index'
  get     'pages'            =>  'pages#index'
  get     'pages/new'        =>  'pages#new' 
  post    'pages'            =>  'pages#create'
  delete  'pages/:id'        =>  'pages#destroy'
  patch   'pages/:id'        =>  'pages#update'
  get     'pages/:id/edit'   =>  'pages#edit'
  get     'users/:id'        =>  'users#show'
end
