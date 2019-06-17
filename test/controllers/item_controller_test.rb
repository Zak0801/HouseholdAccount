require 'test_helper'

class ItemControllerTest < ActionDispatch::IntegrationTest
  test "should get root" do
    get root_url
    assert_response :success
  end

  test "should get index" do
    get item_index_url
    assert_response :success
  end

end
