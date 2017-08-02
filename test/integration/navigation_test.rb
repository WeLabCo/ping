require 'test_helper'

class NavigationTest < ActionDispatch::IntegrationTest
  test "pong" do
    get ping.ping_path
     assert_response :success
  end
end

