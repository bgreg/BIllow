Rails.application.routes.draw do

  resources :location_homes, only: [:show]
  post "locations/get_homes", to: "locations#get_homes"
  resources :locations, only: [:index] do
    resources :homes, only: [:index]
  end
end
