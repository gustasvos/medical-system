Rails.application.routes.draw do
  resources :patients
  resources :appointments
  resources :doctors

  # Defines the root path route ("/")
  root "appointments#index"
end
