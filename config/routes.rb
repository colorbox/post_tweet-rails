Rails.application.routes.draw do
  resources :tweets, only: %i(create new)
end
