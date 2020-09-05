require 'test_helper'

class AirborneflightdelaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @airborneflightdelay = airborneflightdelays(:one)
  end

  test "should get index" do
    get airborneflightdelays_url
    assert_response :success
  end

  test "should get new" do
    get new_airborneflightdelay_url
    assert_response :success
  end

  test "should create airborneflightdelay" do
    assert_difference('Airborneflightdelay.count') do
      post airborneflightdelays_url, params: { airborneflightdelay: { airborneFlightDelays: @airborneflightdelay.airborneFlightDelays } }
    end

    assert_redirected_to airborneflightdelay_url(Airborneflightdelay.last)
  end

  test "should show airborneflightdelay" do
    get airborneflightdelay_url(@airborneflightdelay)
    assert_response :success
  end

  test "should get edit" do
    get edit_airborneflightdelay_url(@airborneflightdelay)
    assert_response :success
  end

  test "should update airborneflightdelay" do
    patch airborneflightdelay_url(@airborneflightdelay), params: { airborneflightdelay: { airborneFlightDelays: @airborneflightdelay.airborneFlightDelays } }
    assert_redirected_to airborneflightdelay_url(@airborneflightdelay)
  end

  test "should destroy airborneflightdelay" do
    assert_difference('Airborneflightdelay.count', -1) do
      delete airborneflightdelay_url(@airborneflightdelay)
    end

    assert_redirected_to airborneflightdelays_url
  end
end
