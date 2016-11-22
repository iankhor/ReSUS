Rails.application.routes.draw do
  resources :quotes
  resources :listings
  resources :practitioner_profiles
  resources :patient_profiles
  resources :experiments
  resources :dashboard
  resources :charges
  
  resources :conversations, only: [:index, :show, :destroy] do
    member do
      post :reply
      post :restore
      post :mark_as_read
    end
    collection do
      delete :empty_trash
    end
  end
  resources :messages, only: [:new, :create]
  
  root 'home#index'
  devise_for :users, controllers: { registrations: "registrations" }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
