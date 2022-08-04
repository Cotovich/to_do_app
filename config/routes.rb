Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'lists#index'

  devise_scope :user do
    get '/users/sign_out' => 'sessions#destroy'
    # get "/some/route" => "some_devise_controller"
  end
end
