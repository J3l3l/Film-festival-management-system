Rails.application.routes.draw do
  root "home#index"

  resources :films, only: [:index]
  resources :directors, only: [:index]
end
