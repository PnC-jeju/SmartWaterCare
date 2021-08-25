Rails.application.routes.draw do

  #root 'application#hello'
  root to: "welcome#index"
end
