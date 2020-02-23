require 'test_helper'

class SessionControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get session_controller_new_url
    assert_response :success
  end

  test "should get create" do
    get session_controller_create_url
    assert_response :success
  end

  test "should get destroy" do
    get session_controller_destroy_url
    assert_response :success
  end

end
