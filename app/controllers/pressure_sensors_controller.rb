class PressureSensorsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_switcher, only: [:index]

  def index
    @pagy, @ps= pagy(PressureSensor.order(id: :desc).limit(500), item: 10)
  end

  def change_value_switcher
    session[:switcher_value]= params[:switcher_value]
    byebug
  end

  private
  def set_switcher
    if session[:switcher_value] == nil
      session[:switcher_value] = true
    end
    byebug
  end
end
