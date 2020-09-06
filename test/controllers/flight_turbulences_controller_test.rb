require 'test_helper'

class FlightTurbulencesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @flight_turbulence = flight_turbulences(:one)
  end

  test "should get index" do
    get flight_turbulences_url
    assert_response :success
  end

  test "should get new" do
    get new_flight_turbulence_url
    assert_response :success
  end

  test "should create flight_turbulence" do
    assert_difference('FlightTurbulence.count') do
      post flight_turbulences_url, params: { flight_turbulence: { turbulenceType: @flight_turbulence.turbulenceType } }
    end

    assert_redirected_to flight_turbulence_url(FlightTurbulence.last)
  end

  test "should show flight_turbulence" do
    get flight_turbulence_url(@flight_turbulence)
    assert_response :success
  end

  test "should get edit" do
    get edit_flight_turbulence_url(@flight_turbulence)
    assert_response :success
  end

  test "should update flight_turbulence" do
    patch flight_turbulence_url(@flight_turbulence), params: { flight_turbulence: { turbulenceType: @flight_turbulence.turbulenceType } }
    assert_redirected_to flight_turbulence_url(@flight_turbulence)
  end

  test "should destroy flight_turbulence" do
    assert_difference('FlightTurbulence.count', -1) do
      delete flight_turbulence_url(@flight_turbulence)
    end

    assert_redirected_to flight_turbulences_url
  end
end
