Rails.application.routes.draw do
  devise_for :users

  # devise_for :users do
  #   delete '/users/sign_out' => 'devise/sessions#destroy'
  # end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#home"

  resources :products

  get "notfound", to:"pages#notfound"

  post "checkout/create", to: "checkout#create"
  # resources :checkout, only: [:create]
end
