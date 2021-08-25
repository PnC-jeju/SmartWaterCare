class WaterMetersController < ApplicationController
  def index
    @watermeters = WaterMeter.all
  end
  def list

  end
end
