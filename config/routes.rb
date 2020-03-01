Rails.application.routes.draw do
  root "posts#index"

  devise_for :users, only: %i[sessions registrations passwords]

  resources :users, only: %i[show], param: :username
  get "edit_profile", to: "users#edit"
  patch "profile", to: "users#update"

  resources :posts, only: %i[index show new create]
  resources :likes, only: %i[create destroy]
  resources :comments, only: %i[create]
end
