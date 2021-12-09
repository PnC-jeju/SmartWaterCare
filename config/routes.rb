Rails.application.routes.draw do
  devise_for :users
  
  authenticate :user, lambda {  |u| u.admin? } do
    begin
      mount RailsAdmin::Engine => '/admin', as: 'rails_admin'      
    rescue
      redirect_to new_user_session_path
    end
  end

  namespace 'api' do
    namespace 'v1' do
      get '/realtimedata' => 'statistics#realtimedata'      
      get '/hourlydata' => 'statistics#hourlydata'
      get '/dailydata' => 'statistics#dailydata'            
      get '/monthlydata' => 'statistics#monthlydata'      
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
  get '/chart', to: 'charts#show'  
  get '/pressure/change_value_switcher', to: 'pressure_sensors#change_value_switcher'
end
