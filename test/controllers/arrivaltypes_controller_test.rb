require 'test_helper'

class ArrivaltypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @arrivaltype = arrivaltypes(:one)
  end

  test "should get index" do
    get arrivaltypes_url
    assert_response :success
  end

  test "should get new" do
    get new_arrivaltype_url
    assert_response :success
  end

  test "should create arrivaltype" do
    assert_difference('Arrivaltype.count') do
      post arrivaltypes_url, params: { arrivaltype: { arrivalTypes: @arrivaltype.arrivalTypes } }
    end

    assert_redirected_to arrivaltype_url(Arrivaltype.last)
  end

  test "should show arrivaltype" do
    get arrivaltype_url(@arrivaltype)
    assert_response :success
  end

  test "should get edit" do
    get edit_arrivaltype_url(@arrivaltype)
    assert_response :success
  end

  test "should update arrivaltype" do
    patch arrivaltype_url(@arrivaltype), params: { arrivaltype: { arrivalTypes: @arrivaltype.arrivalTypes } }
    assert_redirected_to arrivaltype_url(@arrivaltype)
  end

  test "should destroy arrivaltype" do
    assert_difference('Arrivaltype.count', -1) do
      delete arrivaltype_url(@arrivaltype)
    end

    assert_redirected_to arrivaltypes_url
  end
end
