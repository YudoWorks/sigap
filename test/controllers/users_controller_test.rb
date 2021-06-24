require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get login-form" do
    get users_login-form_url
    assert_response :success
  end
end
