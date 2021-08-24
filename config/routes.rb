Rails.application.routes.draw do

  resources :smart_water_care_models
  #root 'application#hello'
  root to: "welcome#index"
end
