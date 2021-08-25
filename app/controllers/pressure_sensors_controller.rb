class PressureSensorsController < ApplicationController
  def index
  end
  def list
    @pressuresensors = PressureSensors.all
  end
end
