class CreateSmartWaterCareModels < ActiveRecord::Migration[6.1]
  def change
    create_table :smart_water_care_models do |t|
      t.integer :dong_number
      t.string :household_type
      t.string :smartwatercare_serialnumber
      t.integer :smartwatercare_status
      t.string :smartwatercare_errorcode
      t.float :AP_water_flowrate
      t.float :AP_water_totalvolume
      t.string :AP_water_usedtime
      t.float :AP_water_pressure
      t.float :AP_water_temperature
      t.float :AP_heatingwater_flowrate
      t.float :AP_heatingwater_totalvolume
      t.float :AP_heatingwater_pressure
      t.float :AP_heatingwater_temperature
      t.float :fstfloor_kitchen_basin_flowrate
      t.float :fstfloor_kitchen_basin_totalvolume
      t.float :fstfloor_kitchen_builtinwasher_flowrate
      t.float :fstfloor_kitchen_builtinwasher_totalvolume
      t.float :fstfloor_restroom_toilet_flowrate
      t.float :fstfloor_restroom_toilet_totalvolume
      t.float :fstfloor_restroom_washbasin_flowrate
      t.float :fstfloor_restroom_washbasin_totalvolume
      t.float :fstfloor_restroom_showers_flowrate
      t.float :fstfloor_restroom_showers_totalvolume
      t.float :fstfloor_utilityroom_flowrate
      t.float :fstfloor_utilityroom_totalvolume
      t.float :fstfloor_outdoor_flowrate
      t.float :fstfloor_outdoor_totalvolume
      t.float :sndfloor_kitchen_basin_flowrate
      t.float :sndfloor_kitchen_basin_totalvolume
      t.float :sndfloor_kitchen_builtinwasher_flowrate
      t.float :sndfloor_kitchen_builtinwasher_totalvolume
      t.float :sndfloor_restroom2_toilet_flowrate
      t.float :sndfloor_restroom2_toilet_totalvolume
      t.float :sndfloor_restroom2_washbasin_flowrate
      t.float :sndfloor_restroom2_washbasin_totalvolume
      t.float :sndfloor_restroom2_showers_flowrate
      t.float :sndfloor_restroom2_showers_totalvolume
      t.float :sndfloor_restroom3_toilet_flowrate
      t.float :sndfloor_restroom3_toilet_totalvolume
      t.float :sndfloor_restroom3_washbasin_flowrate
      t.float :sndfloor_restroom3_washbasin_totalvolume
      t.float :sndfloor_restroom3_tub_flowrate
      t.float :sndfloor_restroom3_tub_totalvolume
      t.float :sndfloor_dressroom_flowrate
      t.float :sndfloor_dressroom_totalvolume
      t.float :sndfloor_outdoor_flowrate
      t.float :sndfloor_outdoor_totalvolume
      t.float :household_leakage_expectations
      t.float :household_saving_expectations
      t.float :household_basin_pattern_usage
      t.float :household_toilet_pattern_usage
      t.float :household_showers_pattern_usage
      t.float :household_kitchen_pattern_usage
      t.float :household_restroom_pattern_usage
      t.float :household_outdoor_pattern_usage
      t.float :household_utilityroom_pattern_usage
      t.float :household_tub_pattern_usage
      t.float :household_washer_pattern_usage

      t.timestamps
    end
  end
end
