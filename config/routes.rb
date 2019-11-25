Rails.application.routes.draw do

  devise_for :users, controllers: {
    registrations: 'users/registrations',
    comfirmations: 'users/confirmations',
    sessions: 'users/sessions'
  }

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  end

  devise_scope :user do
    get "user/:id", :to => "users/registrations#detail"
    get "signup", :to => "users/registrations#new"
    post "create", :to => "users/registrations#create"
    get "login", :to => "users/sessions#new"
    get "logout", :to => "users/sessions#destroy"
  end


  resources :users do
    resource :tags, only: %i(new create edit destroy update), module: :users
  end
  resources :items , only: [:new , :create, :destroy, :update]
  resources :questions, only: [:show, :new] do
    resources :answers, only: %i(show)
  end

  resources :mypages do
    member do
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
      get :review2_1_1
      get :review2_2_1
      get :review2_2_2
      get :review2_2_3
    end
  end

  # 仮置き
  root 'users#index'

end
