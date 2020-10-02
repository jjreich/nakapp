require 'test_helper'

class SearchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @search = searches(:one)
  end

  test "should get index" do
    get searches_url
    assert_response :success
  end

  test "should get new" do
    get new_search_url
    assert_response :success
  end

  test "should create search" do
    assert_difference('Search.count') do
      post searches_url, params: { search: { PIC: @search.PIC, SIC: @search.SIC, airfield: @search.airfield, arrMax: @search.arrMax, arrMin: @search.arrMin, caterMax: @search.caterMax, caterMin: @search.caterMin, catering: @search.catering, createdBy: @search.createdBy, dateEnd: @search.dateEnd, dateStart: @search.dateStart, depMax: @search.depMax, depMin: @search.depMin, flightMax: @search.flightMax, flightMin: @search.flightMin, flightNumber: @search.flightNumber, fullTextSearch: @search.fullTextSearch, hasComments: @search.hasComments, maint: @search.maint, maintMax: @search.maintMax, maintMin: @search.maintMin, memberName: @search.memberName, prepMax: @search.prepMax, prepMin: @search.prepMin, revenue: @search.revenue, type: @search.type } }
    end

    assert_redirected_to search_url(Search.last)
  end

  test "should show search" do
    get search_url(@search)
    assert_response :success
  end

  test "should get edit" do
    get edit_search_url(@search)
    assert_response :success
  end

  test "should update search" do
    patch search_url(@search), params: { search: { PIC: @search.PIC, SIC: @search.SIC, airfield: @search.airfield, arrMax: @search.arrMax, arrMin: @search.arrMin, caterMax: @search.caterMax, caterMin: @search.caterMin, catering: @search.catering, createdBy: @search.createdBy, dateEnd: @search.dateEnd, dateStart: @search.dateStart, depMax: @search.depMax, depMin: @search.depMin, flightMax: @search.flightMax, flightMin: @search.flightMin, flightNumber: @search.flightNumber, fullTextSearch: @search.fullTextSearch, hasComments: @search.hasComments, maint: @search.maint, maintMax: @search.maintMax, maintMin: @search.maintMin, memberName: @search.memberName, prepMax: @search.prepMax, prepMin: @search.prepMin, revenue: @search.revenue, type: @search.type } }
    assert_redirected_to search_url(@search)
  end

  test "should destroy search" do
    assert_difference('Search.count', -1) do
      delete search_url(@search)
    end

    assert_redirected_to searches_url
  end
end
