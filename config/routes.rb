Rails.application.routes.draw do

  #root 'application#hello'
  root to: "welcome#index"
  get '/watermeter/index', to: 'watermeter#index'
end
