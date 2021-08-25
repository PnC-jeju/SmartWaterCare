class WaterMetersController < ApplicationController
  def index
    @pagy, @watermeters = pagy(WaterMeter.all, item: 10)
  end
  def list

  end
end
