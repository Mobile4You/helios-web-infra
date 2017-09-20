Rails.application.routes.draw do
  resources :instances
  resources :clean, only: [:index]
  resources :profiles, only: [:create, :index, :destroy, :new]
  get 'apps', to: 'clean#seek_apps'
  # get 'redis', to: 'clean#clean_cache_memory'
  root 'site#index'
end
