Rails.application.routes.draw do

  #root 'application#hello'
  root to: "welcome#index"
  get '/watermeter', to: 'water_meters#index'
  get '/pressure_sensor', to: 'pressure_sensors#index'
end
