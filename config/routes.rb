Rails.application.routes.draw do

root 'welcomes#index'
  devise_for :users 
  resources :users do 
    resources :posts
  end
end