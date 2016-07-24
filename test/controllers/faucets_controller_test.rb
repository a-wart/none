require 'test_helper'

class FaucetsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get faucets_index_url
    assert_response :success
  end

  test "should get import" do
    get faucets_import_url
    assert_response :success
  end

end
