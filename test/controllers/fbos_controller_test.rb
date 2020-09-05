require 'test_helper'

class FbosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fbo = fbos(:one)
  end

  test "should get index" do
    get fbos_url
    assert_response :success
  end

  test "should get new" do
    get new_fbo_url
    assert_response :success
  end

  test "should create fbo" do
    assert_difference('Fbo.count') do
      post fbos_url, params: { fbo: { fboName: @fbo.fboName } }
    end

    assert_redirected_to fbo_url(Fbo.last)
  end

  test "should show fbo" do
    get fbo_url(@fbo)
    assert_response :success
  end

  test "should get edit" do
    get edit_fbo_url(@fbo)
    assert_response :success
  end

  test "should update fbo" do
    patch fbo_url(@fbo), params: { fbo: { fboName: @fbo.fboName } }
    assert_redirected_to fbo_url(@fbo)
  end

  test "should destroy fbo" do
    assert_difference('Fbo.count', -1) do
      delete fbo_url(@fbo)
    end

    assert_redirected_to fbos_url
  end
end
