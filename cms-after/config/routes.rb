Rails.application.routes.draw do
  mount Mercury::Engine => '/'
  root to: 'pages#index'
  resources :pages, only: [:index, :show]
end
