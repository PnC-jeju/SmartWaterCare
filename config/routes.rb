Rails.application.routes.draw do
  devise_for :users
  
  authenticate :user, lambda {  |u| u.admin? } do
    begin
      mount RailsAdmin::Engine => '/admin', as: 'rails_admin'      
    rescue
      redirect_to new_user_session_path
    end
  end

  get 'static_pages/home'
  get 'static_pages/help'
  get 'static_pages/about'
  get 'static_pages/contact'
  #root 'application#hello'
  root to: "static_pages#home"
  get '/watermeter', to: 'water_meters#index'
  get '/pressure', to: 'pressure_sensors#index'
  get '/pressure/change_value_switcher', to: 'pressure_sensors#change_value_switcher'
end
