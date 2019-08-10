Rails.application.routes.draw do
  resources :users
  resources :items , only: [:new , :create, :destroy, :update]
  resource :questions, only: [:show, :new]
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
      get :salesHistory
    end
  end
  # get 'mypages/salesHistory'
end
