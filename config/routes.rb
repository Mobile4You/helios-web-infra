Rails.application.routes.draw do
  resources :instances
  resources :profiles, only: [:create, :index, :destroy, :new]
  root 'site#index'
end
