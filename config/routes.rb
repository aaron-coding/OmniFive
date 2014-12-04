Rails.application.routes.draw do
  root to: "static_pages#root"
  
  resources :users, only: [:create, :destroy, :new]
  resource :session, only: [:create, :destroy, :new]
  
  namespace :api, defaults: { format: :json } do
    resources :gigs, only: [:create, :destroy, :show, :index]
    resources :gigextras, only: [:create, :update, :destroy]
    resources :users, only: [:show, :update]
    resources :orders, only: [:create, :show]
  end
  
  
end
