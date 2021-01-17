Rails.application.routes.draw do
  resources :invoices
  resources :orders
  resources :appointments
  resources :contacts
  resources :leads
  get '/role', to: 'pages#role', as: :role

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
