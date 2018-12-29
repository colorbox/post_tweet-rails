Rails.application.routes.draw do
  root 'tweets#new'

  resources :tweets, only: %i(create new)
end
