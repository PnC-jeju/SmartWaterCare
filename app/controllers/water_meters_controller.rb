class WaterMetersController < ApplicationController
  def index
    @pagy, @watermeters = pagy(WaterMeter.order(id: :desc).limit(500), count: 12 , items: 30)
  end
  def list

  end
end
