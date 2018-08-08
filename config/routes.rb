Rails.application.routes.draw do
  # root to: "controller#action"

  resources :restaurants, only: [:index, :show, :create, :new] do
    resources :reviews, only: [:index, :create, :new]
  end
  namespace :admin do
    resources :restaurants, only: [:destroy, :edit, :update]
  end
end
