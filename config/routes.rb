Rails.application.routes.draw do
  resources :locations, only: [:index]
end
