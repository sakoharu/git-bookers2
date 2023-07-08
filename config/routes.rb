Rails.application.routes.draw do



  get 'homes/about' => 'homes#about', as: 'about'
  post 'books' => 'books#create'

  devise_for :users
  root to: "homes#top"
  resources :books, only: [:edit, :index, :show, :destroy]
  resources :users, only: [:show, :edit, :index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


end

