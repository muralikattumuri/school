Rails.application.routes.draw do


  resources :marks
 
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  resources :users
  resources :pages
  get 'students' => 'pages#students', :as => 'students'
   get 'faculty' => 'pages#faculty', :as => 'faculty'
   get 'year1'   => 'pages#year1',   :as => 'year1'
   get 'year2'   => 'pages#year2',   :as => 'year2'
 get 'year3'   => 'pages#year3',   :as => 'year3'

  root to: 'pages#index'
 # devise_for :admin
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
