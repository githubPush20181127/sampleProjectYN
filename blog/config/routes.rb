Rails.application.routes.draw do

  root :to => 'users#index'
  resources :user_sessions
  resources :users

  get 'login' => 'user_sessions#new', :as => :login
  post 'logout' => 'user_sessions#destroy', :as => :logout

#  get 'welcome/index'

  resources :articles do
    resources :comments
  end

#  root 'welcome#index'
end
