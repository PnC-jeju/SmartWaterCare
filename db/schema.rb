# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_08_24_012508) do

  create_table "smart_water_care_models", charset: "utf8mb4", force: :cascade do |t|
    t.integer "dong_number"
    t.string "household_type"
    t.string "smartwatercare_serialnumber"
    t.integer "smartwatercare_status"
    t.string "smartwatercare_errorcode"
    t.float "AP_water_flowrate"
    t.float "AP_water_totalvolume"
    t.string "AP_water_usedtime"
    t.float "AP_water_pressure"
    t.float "AP_water_temperature"
    t.float "AP_heatingwater_flowrate"
    t.float "AP_heatingwater_totalvolume"
    t.float "AP_heatingwater_pressure"
    t.float "AP_heatingwater_temperature"
    t.float "fstfloor_kitchen_basin_flowrate"
    t.float "fstfloor_kitchen_basin_totalvolume"
    t.float "fstfloor_kitchen_builtinwasher_flowrate"
    t.float "fstfloor_kitchen_builtinwasher_totalvolume"
    t.float "fstfloor_restroom_toilet_flowrate"
    t.float "fstfloor_restroom_toilet_totalvolume"
    t.float "fstfloor_restroom_washbasin_flowrate"
    t.float "fstfloor_restroom_washbasin_totalvolume"
    t.float "fstfloor_restroom_showers_flowrate"
    t.float "fstfloor_restroom_showers_totalvolume"
    t.float "fstfloor_utilityroom_flowrate"
    t.float "fstfloor_utilityroom_totalvolume"
    t.float "fstfloor_outdoor_flowrate"
    t.float "fstfloor_outdoor_totalvolume"
    t.float "sndfloor_kitchen_basin_flowrate"
    t.float "sndfloor_kitchen_basin_totalvolume"
    t.float "sndfloor_kitchen_builtinwasher_flowrate"
    t.float "sndfloor_kitchen_builtinwasher_totalvolume"
    t.float "sndfloor_restroom2_toilet_flowrate"
    t.float "sndfloor_restroom2_toilet_totalvolume"
    t.float "sndfloor_restroom2_washbasin_flowrate"
    t.float "sndfloor_restroom2_washbasin_totalvolume"
    t.float "sndfloor_restroom2_showers_flowrate"
    t.float "sndfloor_restroom2_showers_totalvolume"
    t.float "sndfloor_restroom3_toilet_flowrate"
    t.float "sndfloor_restroom3_toilet_totalvolume"
    t.float "sndfloor_restroom3_washbasin_flowrate"
    t.float "sndfloor_restroom3_washbasin_totalvolume"
    t.float "sndfloor_restroom3_tub_flowrate"
    t.float "sndfloor_restroom3_tub_totalvolume"
    t.float "sndfloor_dressroom_flowrate"
    t.float "sndfloor_dressroom_totalvolume"
    t.float "sndfloor_outdoor_flowrate"
    t.float "sndfloor_outdoor_totalvolume"
    t.float "household_leakage_expectations"
    t.float "household_saving_expectations"
    t.float "household_basin_pattern_usage"
    t.float "household_toilet_pattern_usage"
    t.float "household_showers_pattern_usage"
    t.float "household_kitchen_pattern_usage"
    t.float "household_restroom_pattern_usage"
    t.float "household_outdoor_pattern_usage"
    t.float "household_utilityroom_pattern_usage"
    t.float "household_tub_pattern_usage"
    t.float "household_washer_pattern_usage"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
