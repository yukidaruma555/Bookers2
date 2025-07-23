Rails.application.routes.draw do
  
  root to: 'homes#top'
  devise_for :users, controllers: {
    sessions: 'sessions',
    registrations: 'registrations'
  }
  get '/homes/about', to: 'homes#about', as: 'about'

  resources :books, only: [:index, :create, :show, :destroy, :edit, :update]
  resources :users, only: [:show, :edit, :index, :update]
  
 

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
