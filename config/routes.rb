Rails.application.routes.draw do

  # used to redirect to location/homes resource
  post "locations/get_homes", to: "locations#get_homes"
  resources :locations, only: [:index] do
    resources :homes, only: [:index]
  end
end
