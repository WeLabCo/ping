require 'test_helper'

class NavigationTest < ActionDispatch::IntegrationTest

  def extract_log
    id = SecureRandom.hex
    Rails.logger.info("#{id} start")
    yield
    Rails.logger.info("#{id} end")

    regex = Regexp.new("#{id} start(.*)#{id} end", Regexp::MULTILINE)
    s = File.read('./test/dummy/log/test.log')
    m = regex.match(s)
    m[1] if m
  end

  test "pong" do
    logs = extract_log do
      get ping.ping_path
      assert_response :success
    end

    refute_includes(logs, 'Processing by Ping::ApplicationController#ping')
    refute_includes(logs, 'Completed 200')
  end

  test "verbose pong" do
    logs = extract_log do
      Ping::ApplicationController.stub :force_log_ping?, true do
        get ping.ping_path
        assert_response :success
      end
    end

    assert_includes(logs, 'Processing by Ping::ApplicationController#ping')
    assert_includes(logs, 'Completed 200')
  end

end

