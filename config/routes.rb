Rails.application.routes.draw do
  devise_for :users
  root 'homes#index'
  resources :reservations 
  resources :horses, expect: [:show]
  resources :menus
  resources :admin_reservations
  resources :news
end
