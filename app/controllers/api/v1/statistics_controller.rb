class Api::V1::StatisticsController < ApplicationController
  def realtimedata
    @waterdata = WaterMeter.limit(5).order('getting_time desc')
    render json: @waterdata
  end
  def hourlydata
    
  end
  def dailydata
    
  end
  def monthlydata
    
  end
end
