Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }

  root 'lists#index'

  devise_scope :user do
    get '/users/sign_out' => 'sessions#destroy'
  end

  resources :users, only: [:show, :edit, :update]
  resources :lists
  get '/new_user', to: 'unidentified_users#index'
end
