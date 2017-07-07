Rails.application.routes.draw do
  get 'home', to: 'home#show'

  resources :plots

  root 'home#show'
end
