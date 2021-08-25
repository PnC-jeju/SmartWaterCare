require "test_helper"

class WaterMetersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get water_meters_index_url
    assert_response :success
  end
end
