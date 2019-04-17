Rails.application.routes.draw do
  resources :users
  resource :questions, only: [:show]
end
