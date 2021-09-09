class PressureSensorsController < ApplicationController
  before_action :authenticate_user!
  def index
    @pagy, @ps= pagy(PressureSensor.order(id: :desc).limit(500), item: 10)
  end
end
