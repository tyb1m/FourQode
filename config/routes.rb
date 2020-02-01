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
  resources :messages, only: [:index]
  resource :questions, only: [:show]
  resources :mypages do
    collection do
      get :notifications
      get :app_contractors
      get :solved_questions
      get :unsolved_questions
      get :leaded_questions
      get :reviews
      get :guid
      get :comments
      get :contact
      get :sales
      get :charges
      get :profiles
      get :mail_passwords
      get :cards
      get :my_infos
    end
  end
end
