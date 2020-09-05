require 'test_helper'

class DeparturetypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @departuretype = departuretypes(:one)
  end

  test "should get index" do
    get departuretypes_url
    assert_response :success
  end

  test "should get new" do
    get new_departuretype_url
    assert_response :success
  end

  test "should create departuretype" do
    assert_difference('Departuretype.count') do
      post departuretypes_url, params: { departuretype: { departureTypes: @departuretype.departureTypes } }
    end

    assert_redirected_to departuretype_url(Departuretype.last)
  end

  test "should show departuretype" do
    get departuretype_url(@departuretype)
    assert_response :success
  end

  test "should get edit" do
    get edit_departuretype_url(@departuretype)
    assert_response :success
  end

  test "should update departuretype" do
    patch departuretype_url(@departuretype), params: { departuretype: { departureTypes: @departuretype.departureTypes } }
    assert_redirected_to departuretype_url(@departuretype)
  end

  test "should destroy departuretype" do
    assert_difference('Departuretype.count', -1) do
      delete departuretype_url(@departuretype)
    end

    assert_redirected_to departuretypes_url
  end
end
