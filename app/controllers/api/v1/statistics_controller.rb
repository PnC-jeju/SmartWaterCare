class Api::V1::StatisticsController < ApplicationController
  protect_from_forgery with: :null_session
  def realtimedata
    @dong=params[:chosen_dong]
    @roomtype=params[:chosen_roomtype]
    # @waterdata = WaterMeter.select('flowrate','totalvolume').limit(1).order('getting_time desc')
    @waterdata = WaterMeter.order('getting_time desc').first    
    @pressuredata = PressureSensor.order('getting_time desc').first

    # render json: @waterdata
    render json: {:flowrate => @waterdata[:flowrate], :totalvolume => @waterdata[:totalvolume], :temperature => @pressuredata[:temperature], :pressure => @pressuredata[:pressure]}

  end
  def hourlydata
    
  end
  def dailydata
    
  end
  def monthlydata
    
  end
end
