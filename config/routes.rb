Rails.application.routes.draw do
  resources :listings
  resources :practitioner_profiles
  resources :patient_profiles
  resources :experiments
  root 'home#index'
  devise_for :users, controllers: { registrations: "registrations" }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
