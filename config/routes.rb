Rails.application.routes.draw do
  resources :quotes
  resources :listings
  resources :practitioner_profiles
  resources :patient_profiles
  resources :experiments
  resources :dashboard
  resources :charges
  root 'home#index'
  devise_for :users, controllers: { registrations: "registrations" }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
