Rails.application.routes.draw do

  resources :composers, only: [:index, :new]

end
