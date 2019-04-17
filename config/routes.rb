Rails.application.routes.draw do
  resources :users
  resources :messages, only: [:index]
end
