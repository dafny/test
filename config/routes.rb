Rails.application.routes.draw do
  resources :services
  resources :companies_services
  resources :contacts
  resources :phones
  resources :memberships
  resources :companies
  devise_for :users

  root to: "companies#index"
end
