require "test_helper"

class DriversandcarsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get driversandcars_index_url
    assert_response :success
  end
end
