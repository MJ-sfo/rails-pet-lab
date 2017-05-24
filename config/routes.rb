Rails.application.routes.draw do

  root "site#index"

  resources :owners do
    resources :pets, only: [:index, :new, :create]
  end
  resources :pets, only: [:show, :edit, :update, :destroy] do  # add in section 2
    resources :appointments, only: [:new, :create]
  end

end
