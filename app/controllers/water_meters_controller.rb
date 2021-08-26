class WaterMetersController < ApplicationController
  def index
    @pagy, @watermeters = pagy(WaterMeter.order(id: :desc).limit(500), item: 10)
  end
  def list

  end
end
