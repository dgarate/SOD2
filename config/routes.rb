Rails.application.routes.draw do
  devise_for :users
  resources :conflicts
  resources :controls
  resources :co_cycle_resps
  resources :responsibilities
  resources :co_user_role_cycles
  resources :cycles
  resources :roles
  resources :companies
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "users#index"
end
