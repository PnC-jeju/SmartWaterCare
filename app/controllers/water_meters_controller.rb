class WaterMetersController < ApplicationController
  before_action :authenticate_user!
  def index
    @pagy, @watermeters = pagy(WaterMeter.order(id: :desc).limit(500))
  end
  
  def list

  end
end
