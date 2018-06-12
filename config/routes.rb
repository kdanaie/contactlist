Rails.application.routes.draw do
  resources :thenewsreporters
  resources :subsections
  resources :sections
  resources :departments

  resources :articles

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #
  root :to => "pages#home"

  get 'contactus', to: 'contacts#contactus'
  get 'about', to: 'contacts#about'
end
