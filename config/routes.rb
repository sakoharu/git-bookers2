Rails.application.routes.draw do
  get 'users/show'
  get 'users/edit'
  get 'books/new'
  post 'books' => 'books#create'
  get 'books/index'
  get 'books/show'
  get 'books/edit'
  get 'homes/top' => 'homes#top'
  get 'homes/about' => 'homes#about', as: 'about'
  devise_for :users
  root to: "homes#top"
  resources :users, only: [:show, :edit]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end