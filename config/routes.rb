Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :countries, only: [:index, :edit, :new, :create, :destroy, :update]
  resources :regions, only: [:index, :edit, :new, :create, :destroy, :update]
  resources :cities, only: [:index, :edit, :new, :create, :destroy, :update]
  root 'application#index'

end
