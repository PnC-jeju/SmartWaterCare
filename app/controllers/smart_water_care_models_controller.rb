class SmartWaterCareModelsController < ApplicationController
  before_action :set_smart_water_care_model, only: %i[ show edit update destroy ]

  # GET /smart_water_care_models or /smart_water_care_models.json
  def index
    @smart_water_care_models = SmartWaterCareModel.all
  end

  # GET /smart_water_care_models/1 or /smart_water_care_models/1.json
  def show
  end

  # GET /smart_water_care_models/new
  def new
    @smart_water_care_model = SmartWaterCareModel.new
  end

  # GET /smart_water_care_models/1/edit
  def edit
  end

  # POST /smart_water_care_models or /smart_water_care_models.json
  def create
    @smart_water_care_model = SmartWaterCareModel.new(smart_water_care_model_params)

    respond_to do |format|
      if @smart_water_care_model.save
        format.html { redirect_to @smart_water_care_model, notice: "Smart water care model was successfully created." }
        format.json { render :show, status: :created, location: @smart_water_care_model }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @smart_water_care_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /smart_water_care_models/1 or /smart_water_care_models/1.json
  def update
    respond_to do |format|
      if @smart_water_care_model.update(smart_water_care_model_params)
        format.html { redirect_to @smart_water_care_model, notice: "Smart water care model was successfully updated." }
        format.json { render :show, status: :ok, location: @smart_water_care_model }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @smart_water_care_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /smart_water_care_models/1 or /smart_water_care_models/1.json
  def destroy
    @smart_water_care_model.destroy
    respond_to do |format|
      format.html { redirect_to smart_water_care_models_url, notice: "Smart water care model was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_smart_water_care_model
      @smart_water_care_model = SmartWaterCareModel.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def smart_water_care_model_params
      params.require(:smart_water_care_model).permit(:dong_number, :household_type, :smartwatercare_serialnumber, :smartwatercare_status, :smartwatercare_errorcode, :AP_water_flowrate, :AP_water_totalvolume, :AP_water_usedtime, :AP_water_pressure, :AP_water_temperature, :AP_heatingwater_flowrate, :AP_heatingwater_totalvolume, :AP_heatingwater_pressure, :AP_heatingwater_temperature, :fstfloor_kitchen_basin_flowrate, :fstfloor_kitchen_basin_totalvolume, :fstfloor_kitchen_builtinwasher_flowrate, :fstfloor_kitchen_builtinwasher_totalvolume, :fstfloor_restroom_toilet_flowrate, :fstfloor_restroom_toilet_totalvolume, :fstfloor_restroom_washbasin_flowrate, :fstfloor_restroom_washbasin_totalvolume, :fstfloor_restroom_showers_flowrate, :fstfloor_restroom_showers_totalvolume, :fstfloor_utilityroom_flowrate, :fstfloor_utilityroom_totalvolume, :fstfloor_outdoor_flowrate, :fstfloor_outdoor_totalvolume, :sndfloor_kitchen_basin_flowrate, :sndfloor_kitchen_basin_totalvolume, :sndfloor_kitchen_builtinwasher_flowrate, :sndfloor_kitchen_builtinwasher_totalvolume, :sndfloor_restroom2_toilet_flowrate, :sndfloor_restroom2_toilet_totalvolume, :sndfloor_restroom2_washbasin_flowrate, :sndfloor_restroom2_washbasin_totalvolume, :sndfloor_restroom2_showers_flowrate, :sndfloor_restroom2_showers_totalvolume, :sndfloor_restroom3_toilet_flowrate, :sndfloor_restroom3_toilet_totalvolume, :sndfloor_restroom3_washbasin_flowrate, :sndfloor_restroom3_washbasin_totalvolume, :sndfloor_restroom3_tub_flowrate, :sndfloor_restroom3_tub_totalvolume, :sndfloor_dressroom_flowrate, :sndfloor_dressroom_totalvolume, :sndfloor_outdoor_flowrate, :sndfloor_outdoor_totalvolume, :household_leakage_expectations, :household_saving_expectations, :household_basin_pattern_usage, :household_toilet_pattern_usage, :household_showers_pattern_usage, :household_kitchen_pattern_usage, :household_restroom_pattern_usage, :household_outdoor_pattern_usage, :household_utilityroom_pattern_usage, :household_tub_pattern_usage, :household_washer_pattern_usage)
    end
end
