Rails.application.routes.draw do
  root to: "static_pages#root"
  
  resources :users
  resource :session, only: [:create, :destroy]
  
end
