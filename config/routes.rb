Rails.application.routes.draw do
  root "hangouts#index"
  devise_for :users
  resources :messages, only: [:create]
  get "up" => "rails/health#show", as: :rails_health_check
end
