require 'test_helper'

class RotateControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get rotate_index_url
    assert_response :success
  end

end
