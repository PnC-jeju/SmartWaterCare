require "application_system_test_case"

class SmartWaterCareModelsTest < ApplicationSystemTestCase
  setup do
    @smart_water_care_model = smart_water_care_models(:one)
  end

  test "visiting the index" do
    visit smart_water_care_models_url
    assert_selector "h1", text: "Smart Water Care Models"
  end

  test "creating a Smart water care model" do
    visit smart_water_care_models_url
    click_on "New Smart Water Care Model"

    fill_in "Ap heatingwater flowrate", with: @smart_water_care_model.AP_heatingwater_flowrate
    fill_in "Ap heatingwater pressure", with: @smart_water_care_model.AP_heatingwater_pressure
    fill_in "Ap heatingwater temperature", with: @smart_water_care_model.AP_heatingwater_temperature
    fill_in "Ap heatingwater totalvolume", with: @smart_water_care_model.AP_heatingwater_totalvolume
    fill_in "Ap water flowrate", with: @smart_water_care_model.AP_water_flowrate
    fill_in "Ap water pressure", with: @smart_water_care_model.AP_water_pressure
    fill_in "Ap water temperature", with: @smart_water_care_model.AP_water_temperature
    fill_in "Ap water totalvolume", with: @smart_water_care_model.AP_water_totalvolume
    fill_in "Ap water usedtime", with: @smart_water_care_model.AP_water_usedtime
    fill_in "Dong number", with: @smart_water_care_model.dong_number
    fill_in "Fstfloor kitchen basin flowrate", with: @smart_water_care_model.fstfloor_kitchen_basin_flowrate
    fill_in "Fstfloor kitchen basin totalvolume", with: @smart_water_care_model.fstfloor_kitchen_basin_totalvolume
    fill_in "Fstfloor kitchen builtinwasher flowrate", with: @smart_water_care_model.fstfloor_kitchen_builtinwasher_flowrate
    fill_in "Fstfloor kitchen builtinwasher totalvolume", with: @smart_water_care_model.fstfloor_kitchen_builtinwasher_totalvolume
    fill_in "Fstfloor outdoor flowrate", with: @smart_water_care_model.fstfloor_outdoor_flowrate
    fill_in "Fstfloor outdoor totalvolume", with: @smart_water_care_model.fstfloor_outdoor_totalvolume
    fill_in "Fstfloor restroom showers flowrate", with: @smart_water_care_model.fstfloor_restroom_showers_flowrate
    fill_in "Fstfloor restroom showers totalvolume", with: @smart_water_care_model.fstfloor_restroom_showers_totalvolume
    fill_in "Fstfloor restroom toilet flowrate", with: @smart_water_care_model.fstfloor_restroom_toilet_flowrate
    fill_in "Fstfloor restroom toilet totalvolume", with: @smart_water_care_model.fstfloor_restroom_toilet_totalvolume
    fill_in "Fstfloor restroom washbasin flowrate", with: @smart_water_care_model.fstfloor_restroom_washbasin_flowrate
    fill_in "Fstfloor restroom washbasin totalvolume", with: @smart_water_care_model.fstfloor_restroom_washbasin_totalvolume
    fill_in "Fstfloor utilityroom flowrate", with: @smart_water_care_model.fstfloor_utilityroom_flowrate
    fill_in "Fstfloor utilityroom totalvolume", with: @smart_water_care_model.fstfloor_utilityroom_totalvolume
    fill_in "Household basin pattern usage", with: @smart_water_care_model.household_basin_pattern_usage
    fill_in "Household kitchen pattern usage", with: @smart_water_care_model.household_kitchen_pattern_usage
    fill_in "Household leakage expectations", with: @smart_water_care_model.household_leakage_expectations
    fill_in "Household outdoor pattern usage", with: @smart_water_care_model.household_outdoor_pattern_usage
    fill_in "Household restroom pattern usage", with: @smart_water_care_model.household_restroom_pattern_usage
    fill_in "Household saving expectations", with: @smart_water_care_model.household_saving_expectations
    fill_in "Household showers pattern usage", with: @smart_water_care_model.household_showers_pattern_usage
    fill_in "Household toilet pattern usage", with: @smart_water_care_model.household_toilet_pattern_usage
    fill_in "Household tub pattern usage", with: @smart_water_care_model.household_tub_pattern_usage
    fill_in "Household type", with: @smart_water_care_model.household_type
    fill_in "Household utilityroom pattern usage", with: @smart_water_care_model.household_utilityroom_pattern_usage
    fill_in "Household washer pattern usage", with: @smart_water_care_model.household_washer_pattern_usage
    fill_in "Smartwatercare errorcode", with: @smart_water_care_model.smartwatercare_errorcode
    fill_in "Smartwatercare serialnumber", with: @smart_water_care_model.smartwatercare_serialnumber
    fill_in "Smartwatercare status", with: @smart_water_care_model.smartwatercare_status
    fill_in "Sndfloor dressroom flowrate", with: @smart_water_care_model.sndfloor_dressroom_flowrate
    fill_in "Sndfloor dressroom totalvolume", with: @smart_water_care_model.sndfloor_dressroom_totalvolume
    fill_in "Sndfloor kitchen basin flowrate", with: @smart_water_care_model.sndfloor_kitchen_basin_flowrate
    fill_in "Sndfloor kitchen basin totalvolume", with: @smart_water_care_model.sndfloor_kitchen_basin_totalvolume
    fill_in "Sndfloor kitchen builtinwasher flowrate", with: @smart_water_care_model.sndfloor_kitchen_builtinwasher_flowrate
    fill_in "Sndfloor kitchen builtinwasher totalvolume", with: @smart_water_care_model.sndfloor_kitchen_builtinwasher_totalvolume
    fill_in "Sndfloor outdoor flowrate", with: @smart_water_care_model.sndfloor_outdoor_flowrate
    fill_in "Sndfloor outdoor totalvolume", with: @smart_water_care_model.sndfloor_outdoor_totalvolume
    fill_in "Sndfloor restroom2 showers flowrate", with: @smart_water_care_model.sndfloor_restroom2_showers_flowrate
    fill_in "Sndfloor restroom2 showers totalvolume", with: @smart_water_care_model.sndfloor_restroom2_showers_totalvolume
    fill_in "Sndfloor restroom2 toilet flowrate", with: @smart_water_care_model.sndfloor_restroom2_toilet_flowrate
    fill_in "Sndfloor restroom2 toilet totalvolume", with: @smart_water_care_model.sndfloor_restroom2_toilet_totalvolume
    fill_in "Sndfloor restroom2 washbasin flowrate", with: @smart_water_care_model.sndfloor_restroom2_washbasin_flowrate
    fill_in "Sndfloor restroom2 washbasin totalvolume", with: @smart_water_care_model.sndfloor_restroom2_washbasin_totalvolume
    fill_in "Sndfloor restroom3 toilet flowrate", with: @smart_water_care_model.sndfloor_restroom3_toilet_flowrate
    fill_in "Sndfloor restroom3 toilet totalvolume", with: @smart_water_care_model.sndfloor_restroom3_toilet_totalvolume
    fill_in "Sndfloor restroom3 tub flowrate", with: @smart_water_care_model.sndfloor_restroom3_tub_flowrate
    fill_in "Sndfloor restroom3 tub totalvolume", with: @smart_water_care_model.sndfloor_restroom3_tub_totalvolume
    fill_in "Sndfloor restroom3 washbasin flowrate", with: @smart_water_care_model.sndfloor_restroom3_washbasin_flowrate
    fill_in "Sndfloor restroom3 washbasin totalvolume", with: @smart_water_care_model.sndfloor_restroom3_washbasin_totalvolume
    click_on "Create Smart water care model"

    assert_text "Smart water care model was successfully created"
    click_on "Back"
  end

  test "updating a Smart water care model" do
    visit smart_water_care_models_url
    click_on "Edit", match: :first

    fill_in "Ap heatingwater flowrate", with: @smart_water_care_model.AP_heatingwater_flowrate
    fill_in "Ap heatingwater pressure", with: @smart_water_care_model.AP_heatingwater_pressure
    fill_in "Ap heatingwater temperature", with: @smart_water_care_model.AP_heatingwater_temperature
    fill_in "Ap heatingwater totalvolume", with: @smart_water_care_model.AP_heatingwater_totalvolume
    fill_in "Ap water flowrate", with: @smart_water_care_model.AP_water_flowrate
    fill_in "Ap water pressure", with: @smart_water_care_model.AP_water_pressure
    fill_in "Ap water temperature", with: @smart_water_care_model.AP_water_temperature
    fill_in "Ap water totalvolume", with: @smart_water_care_model.AP_water_totalvolume
    fill_in "Ap water usedtime", with: @smart_water_care_model.AP_water_usedtime
    fill_in "Dong number", with: @smart_water_care_model.dong_number
    fill_in "Fstfloor kitchen basin flowrate", with: @smart_water_care_model.fstfloor_kitchen_basin_flowrate
    fill_in "Fstfloor kitchen basin totalvolume", with: @smart_water_care_model.fstfloor_kitchen_basin_totalvolume
    fill_in "Fstfloor kitchen builtinwasher flowrate", with: @smart_water_care_model.fstfloor_kitchen_builtinwasher_flowrate
    fill_in "Fstfloor kitchen builtinwasher totalvolume", with: @smart_water_care_model.fstfloor_kitchen_builtinwasher_totalvolume
    fill_in "Fstfloor outdoor flowrate", with: @smart_water_care_model.fstfloor_outdoor_flowrate
    fill_in "Fstfloor outdoor totalvolume", with: @smart_water_care_model.fstfloor_outdoor_totalvolume
    fill_in "Fstfloor restroom showers flowrate", with: @smart_water_care_model.fstfloor_restroom_showers_flowrate
    fill_in "Fstfloor restroom showers totalvolume", with: @smart_water_care_model.fstfloor_restroom_showers_totalvolume
    fill_in "Fstfloor restroom toilet flowrate", with: @smart_water_care_model.fstfloor_restroom_toilet_flowrate
    fill_in "Fstfloor restroom toilet totalvolume", with: @smart_water_care_model.fstfloor_restroom_toilet_totalvolume
    fill_in "Fstfloor restroom washbasin flowrate", with: @smart_water_care_model.fstfloor_restroom_washbasin_flowrate
    fill_in "Fstfloor restroom washbasin totalvolume", with: @smart_water_care_model.fstfloor_restroom_washbasin_totalvolume
    fill_in "Fstfloor utilityroom flowrate", with: @smart_water_care_model.fstfloor_utilityroom_flowrate
    fill_in "Fstfloor utilityroom totalvolume", with: @smart_water_care_model.fstfloor_utilityroom_totalvolume
    fill_in "Household basin pattern usage", with: @smart_water_care_model.household_basin_pattern_usage
    fill_in "Household kitchen pattern usage", with: @smart_water_care_model.household_kitchen_pattern_usage
    fill_in "Household leakage expectations", with: @smart_water_care_model.household_leakage_expectations
    fill_in "Household outdoor pattern usage", with: @smart_water_care_model.household_outdoor_pattern_usage
    fill_in "Household restroom pattern usage", with: @smart_water_care_model.household_restroom_pattern_usage
    fill_in "Household saving expectations", with: @smart_water_care_model.household_saving_expectations
    fill_in "Household showers pattern usage", with: @smart_water_care_model.household_showers_pattern_usage
    fill_in "Household toilet pattern usage", with: @smart_water_care_model.household_toilet_pattern_usage
    fill_in "Household tub pattern usage", with: @smart_water_care_model.household_tub_pattern_usage
    fill_in "Household type", with: @smart_water_care_model.household_type
    fill_in "Household utilityroom pattern usage", with: @smart_water_care_model.household_utilityroom_pattern_usage
    fill_in "Household washer pattern usage", with: @smart_water_care_model.household_washer_pattern_usage
    fill_in "Smartwatercare errorcode", with: @smart_water_care_model.smartwatercare_errorcode
    fill_in "Smartwatercare serialnumber", with: @smart_water_care_model.smartwatercare_serialnumber
    fill_in "Smartwatercare status", with: @smart_water_care_model.smartwatercare_status
    fill_in "Sndfloor dressroom flowrate", with: @smart_water_care_model.sndfloor_dressroom_flowrate
    fill_in "Sndfloor dressroom totalvolume", with: @smart_water_care_model.sndfloor_dressroom_totalvolume
    fill_in "Sndfloor kitchen basin flowrate", with: @smart_water_care_model.sndfloor_kitchen_basin_flowrate
    fill_in "Sndfloor kitchen basin totalvolume", with: @smart_water_care_model.sndfloor_kitchen_basin_totalvolume
    fill_in "Sndfloor kitchen builtinwasher flowrate", with: @smart_water_care_model.sndfloor_kitchen_builtinwasher_flowrate
    fill_in "Sndfloor kitchen builtinwasher totalvolume", with: @smart_water_care_model.sndfloor_kitchen_builtinwasher_totalvolume
    fill_in "Sndfloor outdoor flowrate", with: @smart_water_care_model.sndfloor_outdoor_flowrate
    fill_in "Sndfloor outdoor totalvolume", with: @smart_water_care_model.sndfloor_outdoor_totalvolume
    fill_in "Sndfloor restroom2 showers flowrate", with: @smart_water_care_model.sndfloor_restroom2_showers_flowrate
    fill_in "Sndfloor restroom2 showers totalvolume", with: @smart_water_care_model.sndfloor_restroom2_showers_totalvolume
    fill_in "Sndfloor restroom2 toilet flowrate", with: @smart_water_care_model.sndfloor_restroom2_toilet_flowrate
    fill_in "Sndfloor restroom2 toilet totalvolume", with: @smart_water_care_model.sndfloor_restroom2_toilet_totalvolume
    fill_in "Sndfloor restroom2 washbasin flowrate", with: @smart_water_care_model.sndfloor_restroom2_washbasin_flowrate
    fill_in "Sndfloor restroom2 washbasin totalvolume", with: @smart_water_care_model.sndfloor_restroom2_washbasin_totalvolume
    fill_in "Sndfloor restroom3 toilet flowrate", with: @smart_water_care_model.sndfloor_restroom3_toilet_flowrate
    fill_in "Sndfloor restroom3 toilet totalvolume", with: @smart_water_care_model.sndfloor_restroom3_toilet_totalvolume
    fill_in "Sndfloor restroom3 tub flowrate", with: @smart_water_care_model.sndfloor_restroom3_tub_flowrate
    fill_in "Sndfloor restroom3 tub totalvolume", with: @smart_water_care_model.sndfloor_restroom3_tub_totalvolume
    fill_in "Sndfloor restroom3 washbasin flowrate", with: @smart_water_care_model.sndfloor_restroom3_washbasin_flowrate
    fill_in "Sndfloor restroom3 washbasin totalvolume", with: @smart_water_care_model.sndfloor_restroom3_washbasin_totalvolume
    click_on "Update Smart water care model"

    assert_text "Smart water care model was successfully updated"
    click_on "Back"
  end

  test "destroying a Smart water care model" do
    visit smart_water_care_models_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Smart water care model was successfully destroyed"
  end
end
