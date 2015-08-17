Rails.application.routes.draw do
  resources :events, only: [:show, :create, :update]
end
