Rails.application.routes.draw do
  resources :words, except: [:show]
  root to: 'application#index'
end
