require 'test_helper'

class DebriefsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @debrief = debriefs(:one)
  end

  test "should get index" do
    get debriefs_url
    assert_response :success
  end

  test "should get new" do
    get new_debrief_url
    assert_response :success
  end

  test "should create debrief" do
    assert_difference('Debrief.count') do
      post debriefs_url, params: { debrief: { airborneFlightCheckins: @debrief.airborneFlightCheckins, airborneFlightDelays: @debrief.airborneFlightDelays, cateringComments: @debrief.cateringComments, cateringRating: @debrief.cateringRating, cateringStatus: @debrief.cateringStatus, clientArrivalComments: @debrief.clientArrivalComments, clientArrivalTiming: @debrief.clientArrivalTiming, clientArrivalType: @debrief.clientArrivalType, clientDepartureComments: @debrief.clientDepartureComments, clientDepartureType: @debrief.clientDepartureType, flightComments: @debrief.flightComments, flightNumber: @debrief.flightNumber, flightTurbulence: @debrief.flightTurbulence, overallComments: @debrief.overallComments, preparationComments: @debrief.preparationComments, preparationRating: @debrief.preparationRating } }
    end

    assert_redirected_to debrief_url(Debrief.last)
  end

  test "should show debrief" do
    get debrief_url(@debrief)
    assert_response :success
  end

  test "should get edit" do
    get edit_debrief_url(@debrief)
    assert_response :success
  end

  test "should update debrief" do
    patch debrief_url(@debrief), params: { debrief: { airborneFlightCheckins: @debrief.airborneFlightCheckins, airborneFlightDelays: @debrief.airborneFlightDelays, cateringComments: @debrief.cateringComments, cateringRating: @debrief.cateringRating, cateringStatus: @debrief.cateringStatus, clientArrivalComments: @debrief.clientArrivalComments, clientArrivalTiming: @debrief.clientArrivalTiming, clientArrivalType: @debrief.clientArrivalType, clientDepartureComments: @debrief.clientDepartureComments, clientDepartureType: @debrief.clientDepartureType, flightComments: @debrief.flightComments, flightNumber: @debrief.flightNumber, flightTurbulence: @debrief.flightTurbulence, overallComments: @debrief.overallComments, preparationComments: @debrief.preparationComments, preparationRating: @debrief.preparationRating } }
    assert_redirected_to debrief_url(@debrief)
  end

  test "should destroy debrief" do
    assert_difference('Debrief.count', -1) do
      delete debrief_url(@debrief)
    end

    assert_redirected_to debriefs_url
  end
end
