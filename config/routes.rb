Rails.application.routes.draw do
  
  root to: 'homes#top'
  devise_for :users
  get '/homes/about', to: 'homes#about', as: 'about'

  resources :books, only: [:index, :create, :show]
  resources :users, only: [:show, :edit]
  
 

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
