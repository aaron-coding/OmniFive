Rails.application.routes.draw do
  root to: "static_pages#root"
  
  resources :users, only: [:create, :destroy, :new]
  resource :session, only: [:create, :destroy, :new]
  
end
