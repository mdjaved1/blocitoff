Rails.application.routes.draw do
  get 'users/show'

  devise_for :users
  
  get 'home/index'
  
  root 'users#show'
end
