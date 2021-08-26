class WaterMetersController < ApplicationController
  def index
    @pagy, @watermeters = pagy(WaterMeter.order(id: :desc).limit(500), count: 12, items: 10, cycle: true )
  end
  def list

  end
end
