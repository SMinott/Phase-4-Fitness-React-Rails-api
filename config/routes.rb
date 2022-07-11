Rails.application.routes.draw do
  #All CRUD for Review
  resources :reviews
  #All CRUD for clients
  resources :clients
  resources :activities, only: [:index, :show]
  resources :coaches, only: [:index, :show]
  


  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end
