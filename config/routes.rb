Rails.application.routes.draw do

  resources :composers, only: [:index, :new, :create, :show]

end
