require 'test_helper'

class FboratingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fborating = fboratings(:one)
  end

  test "should get index" do
    get fboratings_url
    assert_response :success
  end

  test "should get new" do
    get new_fborating_url
    assert_response :success
  end

  test "should create fborating" do
    assert_difference('Fborating.count') do
      post fboratings_url, params: { fborating: { fboComments: @fborating.fboComments, fboStarRating: @fborating.fboStarRating, ratingType: @fborating.ratingType } }
    end

    assert_redirected_to fborating_url(Fborating.last)
  end

  test "should show fborating" do
    get fborating_url(@fborating)
    assert_response :success
  end

  test "should get edit" do
    get edit_fborating_url(@fborating)
    assert_response :success
  end

  test "should update fborating" do
    patch fborating_url(@fborating), params: { fborating: { fboComments: @fborating.fboComments, fboStarRating: @fborating.fboStarRating, ratingType: @fborating.ratingType } }
    assert_redirected_to fborating_url(@fborating)
  end

  test "should destroy fborating" do
    assert_difference('Fborating.count', -1) do
      delete fborating_url(@fborating)
    end

    assert_redirected_to fboratings_url
  end
end
