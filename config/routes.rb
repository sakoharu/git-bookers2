Rails.application.routes.draw do
  devise_for :users


  get 'home/about' => 'homes#about', as: 'about'

  root to: "homes#top"
  resources :books, only: [:edit, :index, :show, :destroy, :create, :update]
  resources :users, only: [:show, :edit, :index, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


end

