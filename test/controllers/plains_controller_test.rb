require "test_helper"

class PlainsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @plain = plains(:one)
  end

  test "should get index" do
    get plains_url
    assert_response :success
  end

  test "should get new" do
    get new_plain_url
    assert_response :success
  end

  test "should create plain" do
    assert_difference('Plain.count') do
      post plains_url, params: { plain: { name: @plain.name, price: @plain.price } }
    end

    assert_redirected_to plain_url(Plain.last)
  end

  test "should show plain" do
    get plain_url(@plain)
    assert_response :success
  end

  test "should get edit" do
    get edit_plain_url(@plain)
    assert_response :success
  end

  test "should update plain" do
    patch plain_url(@plain), params: { plain: { name: @plain.name, price: @plain.price } }
    assert_redirected_to plain_url(@plain)
  end

  test "should destroy plain" do
    assert_difference('Plain.count', -1) do
      delete plain_url(@plain)
    end

    assert_redirected_to plains_url
  end
end
