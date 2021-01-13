Rails.application.routes.draw do
  resources :co_user_role_cycles
  resources :cycles
  resources :roles
  resources :companies
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
