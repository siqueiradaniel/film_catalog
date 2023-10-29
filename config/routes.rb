Rails.application.routes.draw do
  root to: 'home#index'

  resources :films, :directors, :genres
end
