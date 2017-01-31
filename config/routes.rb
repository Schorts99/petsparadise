Rails.application.routes.draw do

  namespace :admin do
    resources :managers
    resources :members
    resources :users
    root to: "managers#index"
  end

  mount RailsAdmin::Engine => '//admin', as: 'rails_admin'

  devise_for :managers
  get '/se-parte', to: "members#index"

  devise_for :members
  resources :usuarios, as: :users, only: [:show, :update]
  devise_for :users, controllers:{
    omniauth_callbacks: "users/omniauth_callbacks"
  }

  post "/custom_sign_up", to: "users/omniauth_callbacks#custom_sign_up"

  root 'main#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
