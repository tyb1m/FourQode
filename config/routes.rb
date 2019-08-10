Rails.application.routes.draw do

  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'
  }

  devise_scope :user do
    get "user/:id", :to => "users/registrations#detail"
    get "signup", :to => "users/registrations#new"
    get "login", :to => "users/sessions#new"
    get "logout", :to => "users/sessions#destroy"
    post "create", :to => "users/registrations#create"
  end

  resources :users
  resources :items , only: [:new , :create, :destroy, :update]
  resources :questions, only: [:show, :new]
  # get 'questions/new/markdown'
  # get 'questions/new/preview'

  resources :mypages do
    collection do
      get :index1
      get :index2
      get :index3
      get :index4
      get :index5
      get :logout
      get :mail_password
      get :notification
      get :profile
      get :card
    end
  end

  # 仮置き
  root 'users#index'

end
