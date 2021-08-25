require "test_helper"

class PressureSensorsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pressure_sensors_index_url
    assert_response :success
  end
end
