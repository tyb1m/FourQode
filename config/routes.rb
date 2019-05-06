Rails.application.routes.draw do
  resources :users
  resources :messages, only: [:index]
  resource :questions, only: [:show]
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
end
