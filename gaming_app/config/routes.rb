Rails.application.routes.draw do
  devise_for :users
  resources :games
  resources :moves, only: [:create]

end
