Rails.application.routes.draw do

  resources :projects
  resources :clients
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :contacts, only: [:new, :create]

  # get 'contacts/new'
  # get 'contacts/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'welcome#index'
  get 'welcome/index'

end
