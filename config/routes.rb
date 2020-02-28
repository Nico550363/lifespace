Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#index'
  get   'pages'      =>  'pages#index'
  get   'pages/new'  =>  'pages#new' 
  post  'pages'      =>  'pages#create'
  get   'users/:id'   =>  'users#show'
end
