class PressureSensorsController < ApplicationController
  def index
    # @pagy, @pressuresensors= pagy(PressureSensor.order(id: :desc).limit(500), item: 10)
  end
end
