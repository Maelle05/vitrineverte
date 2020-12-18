require "test_helper"

class FarmsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @farm = farms(:one)
  end

  test "should get index" do
    get farms_url
    assert_response :success
  end

  test "should get new" do
    get new_farm_url
    assert_response :success
  end

  test "should create farm" do
    assert_difference('Farm.count') do
      post farms_url, params: { farm: { address: @farm.address, city: @farm.city, description: @farm.description, email: @farm.email, hours: @farm.hours, name: @farm.name, payment: @farm.payment, phone: @farm.phone, user_id: @farm.user_id, zipcode: @farm.zipcode } }
    end

    assert_redirected_to farm_url(Farm.last)
  end

  test "should show farm" do
    get farm_url(@farm)
    assert_response :success
  end

  test "should get edit" do
    get edit_farm_url(@farm)
    assert_response :success
  end

  test "should update farm" do
    patch farm_url(@farm), params: { farm: { address: @farm.address, city: @farm.city, description: @farm.description, email: @farm.email, hours: @farm.hours, name: @farm.name, payment: @farm.payment, phone: @farm.phone, user_id: @farm.user_id, zipcode: @farm.zipcode } }
    assert_redirected_to farm_url(@farm)
  end

  test "should destroy farm" do
    assert_difference('Farm.count', -1) do
      delete farm_url(@farm)
    end

    assert_redirected_to farms_url
  end
end
