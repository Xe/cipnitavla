require 'test_helper'

class DebugControllerTest < ActionDispatch::IntegrationTest
  test "should get env" do
    get debug_env_url
    assert_response :success
  end

end
