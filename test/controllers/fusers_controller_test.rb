require 'test_helper'

class FusersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fuser = fusers(:one)
  end

  test "should get index" do
    get fusers_url
    assert_response :success
  end

  test "should get new" do
    get new_fuser_url
    assert_response :success
  end

  test "should create fuser" do
    assert_difference('Fuser.count') do
      post fusers_url, params: { fuser: { age: @fuser.age, first_name: @fuser.first_name, last_name: @fuser.last_name, mobile: @fuser.mobile } }
    end

    assert_redirected_to fuser_url(Fuser.last)
  end

  test "should show fuser" do
    get fuser_url(@fuser)
    assert_response :success
  end

  test "should get edit" do
    get edit_fuser_url(@fuser)
    assert_response :success
  end

  test "should update fuser" do
    patch fuser_url(@fuser), params: { fuser: { age: @fuser.age, first_name: @fuser.first_name, last_name: @fuser.last_name, mobile: @fuser.mobile } }
    assert_redirected_to fuser_url(@fuser)
  end

  test "should destroy fuser" do
    assert_difference('Fuser.count', -1) do
      delete fuser_url(@fuser)
    end

    assert_redirected_to fusers_url
  end
end
