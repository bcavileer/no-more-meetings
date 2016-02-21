Rails.application.routes.draw do
  resources :words
  resources :words
  root to: 'application#index'
end
