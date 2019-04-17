Rails.application.routes.draw do
  resources :users
  resources :items , only: [:new , :create, :destroy, :update]
  resource :questions, only: [:show, :new]
end
