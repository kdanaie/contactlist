Rails.application.routes.draw do
  resources :thenewsreporters
  resources :subsections
  resources :sections
  resources :departments

  resources :articles

  get 'signup', to: 'users#new'
  # users
  resources :users, except: [:new]

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  # categories
  resources :categories, except: [:destroy]
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #
  root :to => "pages#home"

  get 'contactus', to: 'contacts#contactus'
  get 'about', to: 'contacts#about'
end
