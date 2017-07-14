Rails.application.routes.draw do
  get 'home', to: 'home#show'

  resources :storylines

  root 'home#show'
end
