Rails.application.routes.draw do
  devise_for :users
  root to: "menus#index"
  resources :menus
  resources :menus do
    resources :comments, only: :create
  end
  resources :users, only: :show
end