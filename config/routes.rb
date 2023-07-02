Rails.application.routes.draw do

  get 'users/show'
  get 'users/edit'
  get 'homes/top' => 'homes#top'
  get 'homes/about' => 'homes#about', as: 'about'
  devise_for :users
  root to: "homes#top"
  resources :books, only: [:new, :index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end