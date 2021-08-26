class WaterMetersController < ApplicationController
  def index
    @pagy, @watermeters = pagy(WaterMeter.order(id: :desc).limit(500), items: 20, cycle: true )
  end
  def list

  end
end
