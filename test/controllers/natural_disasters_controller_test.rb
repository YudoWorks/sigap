require "test_helper"

class NaturalDisastersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get natural_disasters_show_url
    assert_response :success
  end
end
