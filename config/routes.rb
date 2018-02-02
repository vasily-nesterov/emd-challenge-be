Rails.application.routes.draw do
  namespace :api, defaults: {format: 'json'} do
    namespace :v1 do
      resources :ingredients,   only: [:index]
      resources :formulations,  only: [:index]
      resources :prescriptions, only: [:create]
    end
  end
end
