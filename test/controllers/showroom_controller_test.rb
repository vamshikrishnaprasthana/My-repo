require "test_helper"

class ShowroomControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get showroom_index_url
    assert_response :success
  end

  test "should get show" do
    get showroom_show_url
    assert_response :success
  end

  test "should get create" do
    get showroom_create_url
    assert_response :success
  end

  test "should get update" do
    get showroom_update_url
    assert_response :success
  end

  test "should get edit" do
    get showroom_edit_url
    assert_response :success
  end
end
