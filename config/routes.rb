Rails.application.routes.draw do
  resources :contacts, only: [:index, :show, :create, :update, :destroy]
end
