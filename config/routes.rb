Rails.application.routes.draw do
  get 'favorites/criate'
  get 'favorites/destroy'
  root to:'homes#top'
  get 'home/about' => 'homes#about'
  devise_for :users
  resources :users,only: [:show,:index,:edit,:update]
  resources :books
  resources :faivorite,only: [:create,:destroy]
end