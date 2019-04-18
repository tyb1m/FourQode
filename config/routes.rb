Rails.application.routes.draw do
  resources :users
  resources :messages, only: [:index]
  resource :questions, only: [:show]
end
