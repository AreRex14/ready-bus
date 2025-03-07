require 'test_helper'

class TravelersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @traveler = travelers(:one)
  end

  test "should get index" do
    get travelers_url
    assert_response :success
  end

  test "should get new" do
    get new_traveler_url
    assert_response :success
  end

  test "should create traveler" do
    assert_difference('Traveler.count') do
      post travelers_url, params: { traveler: { age: @traveler.age, first_name: @traveler.first_name, ic_no: @traveler.ic_no, last_name: @traveler.last_name, phone_no: @traveler.phone_no } }
    end

    assert_redirected_to traveler_url(Traveler.last)
  end

  test "should show traveler" do
    get traveler_url(@traveler)
    assert_response :success
  end

  test "should get edit" do
    get edit_traveler_url(@traveler)
    assert_response :success
  end

  test "should update traveler" do
    patch traveler_url(@traveler), params: { traveler: { age: @traveler.age, first_name: @traveler.first_name, ic_no: @traveler.ic_no, last_name: @traveler.last_name, phone_no: @traveler.phone_no } }
    assert_redirected_to traveler_url(@traveler)
  end

  test "should destroy traveler" do
    assert_difference('Traveler.count', -1) do
      delete traveler_url(@traveler)
    end

    assert_redirected_to travelers_url
  end
end
