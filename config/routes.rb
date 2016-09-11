Rails.application.routes.draw do
  namespace :admin do
    resources :users
    #Parece que o administrate tem um bug com classes com STI Single table inhreitance
    # resources :admin_users
    resources :spents
    resources :wallets
    root to: "users#index"
  end

  resources :wallets
  resources :spents
  devise_for :users
  # resources :admin_users
  get 'static/home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'static#home'
end
