require 'test_helper'

class FollowerControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get followers_create_url
    assert_response :success
  end
end
