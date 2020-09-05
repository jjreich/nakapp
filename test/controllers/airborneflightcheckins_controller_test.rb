require 'test_helper'

class AirborneflightcheckinsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @airborneflightcheckin = airborneflightcheckins(:one)
  end

  test "should get index" do
    get airborneflightcheckins_url
    assert_response :success
  end

  test "should get new" do
    get new_airborneflightcheckin_url
    assert_response :success
  end

  test "should create airborneflightcheckin" do
    assert_difference('Airborneflightcheckin.count') do
      post airborneflightcheckins_url, params: { airborneflightcheckin: { airborneflightcheckins: @airborneflightcheckin.airborneflightcheckins } }
    end

    assert_redirected_to airborneflightcheckin_url(Airborneflightcheckin.last)
  end

  test "should show airborneflightcheckin" do
    get airborneflightcheckin_url(@airborneflightcheckin)
    assert_response :success
  end

  test "should get edit" do
    get edit_airborneflightcheckin_url(@airborneflightcheckin)
    assert_response :success
  end

  test "should update airborneflightcheckin" do
    patch airborneflightcheckin_url(@airborneflightcheckin), params: { airborneflightcheckin: { airborneflightcheckins: @airborneflightcheckin.airborneflightcheckins } }
    assert_redirected_to airborneflightcheckin_url(@airborneflightcheckin)
  end

  test "should destroy airborneflightcheckin" do
    assert_difference('Airborneflightcheckin.count', -1) do
      delete airborneflightcheckin_url(@airborneflightcheckin)
    end

    assert_redirected_to airborneflightcheckins_url
  end
end
