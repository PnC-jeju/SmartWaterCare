Rails.application.routes.draw do

  #root 'application#hello'
  root to: "welcome#index"
  get '/watermeter', to: 'water_meters#index'
  get '/pressure', to: 'pressure_sensors#index'
end
