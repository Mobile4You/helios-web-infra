Rails.application.routes.draw do
  resources :instances
  resources :clean, only: [:index, :seek_apps]
  resources :profiles, only: [:create, :index, :destroy, :new]
  get 'apps', to: 'clean#seek_apps'
  root 'site#index'
end
