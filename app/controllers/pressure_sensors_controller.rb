class PressureSensorsController < ApplicationController
  def index
    @pagy, @pressuresensors= pagy(PressureSensors.order(id: :desc).limit(500), item: 10)
  end
end
