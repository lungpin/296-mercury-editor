Rails.application.routes.draw do
    namespace :mercury do
      resources :images
    end
  mount Mercury::Engine => '/'
  root to: 'pages#index'
  resources :pages, only: [:index, :show]
end
