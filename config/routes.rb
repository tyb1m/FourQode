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
    collection do
      get :index1
      get :index2
      get :index3
      get :index4
      get :index5
    end
  end

  resources :items , only: [:new , :create, :destroy, :update]
  resources :questfouions, only: %i(new show edit create delete) do
    resources :answers, only: %i(show)
  end


  resources :mypages do
    collection do
      get :notification
      get :app_contractor
      get :solved_question
      get :unsolved_question
      get :leaded_question
      get :review
      get :guid
      get :comment
      get :contact
      get :sale
      get :sales_history
      get :transfer_app
      get :registration_card
      get :transfer_confirm
      get :transfer_completed
      get :sales_term
      get :charge
      get :charge_completed
      get :profile
      get :mail_password
      get :card
      get :card_registration
      get :card_confirm
      get :card_completed
      get :my_info
      get :review2_1_1
      get :review2_2_1
      get :review2_2_2
      get :review2_2_3
    end
  end

  resources :starts do
    collection do
      get :guide
      get :question
      get :solution
      get :coin
      get :regist
      get :cancel
      get :agreement
      get :policy
      get :trademark
      get :inquiry
    end
  end
  # 仮置き
  root 'users#index'

end
