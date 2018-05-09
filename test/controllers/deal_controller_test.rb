require 'test_helper'

class DealControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get deal_create_url
    assert_response :success
  end

  test "should get update" do
    get deal_update_url
    assert_response :success
  end

  test "should get delete" do
    get deal_delete_url
    assert_response :success
  end

end
