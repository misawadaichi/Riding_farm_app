Rails.application.routes.draw do
  devise_for :users
  root 'homes#index'
  get 'homes/about', to: 'homes#about'
  get 'homes/enjoy', to: 'homes#enjoy'
  get 'homes/faq', to: 'homes#faq'
  get 'reservations/:start_date', to: 'reservations#show'
  resources :reservations, expect: [:show]
  resources :horses, expect: [:show]
  resources :menus
  resources :admin_reservations
  resources :news
end
