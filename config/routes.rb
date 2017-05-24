Rails.application.routes.draw do

  root "site#index"

  resources :owners do
    resources :pets, only: [:index, :new, :create]
  end
  resources :pets, only: [:show, :edit, :update, :destroy] do  # add in section 2
    resources :appointments, only: [:new, :create]
  end

  # These routes will be for signup. The first renders a form in the browser. The second will
  # receive the form and create a user in our database using the data given to us by the user.
  get '/signup' => 'owners#new'
  post '/owners' => 'owners#create'
end
