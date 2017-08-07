Rails.application.routes.draw do


  get 'users/show'

  devise_for :users
  
  get 'home/index'
  
  root 'users#show'
  
  resources :users do 
    resources :items, only: [:new, :create]
  end
  
  resources :items
  
end
