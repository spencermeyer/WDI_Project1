Rails.application.routes.draw do
  devise_for :users
  resources :games
  resources :moves, only: [:create]
  resources :users, only: [:index, :show]
  root "games#index"
end
