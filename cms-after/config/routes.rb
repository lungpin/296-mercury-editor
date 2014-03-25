Rails.application.routes.draw do
  devise_for :users, skip: :all

    namespace :mercury do
      resources :images
    end
    mount Mercury::Engine => '/'

  root to: "sessions#new"

  post "/users/sign_in" => "sessions#create"
  post "/users/sign_out" => "sessions#destroy"
  delete "/users/sign_out" => "sessions#destroy"
  resources :pages, only: [:index, :show, :update]
end
