Rails.application.routes.draw do
  root to: 'pages#home'
  get "pages/about", to: "pages#about", as: "about"
  resources :places do
    resources :reservations, only: [:create, :destroy]
    resources :reviews, only: :create
  end
  devise_for :users
  resources :reservations, only: :index
end
