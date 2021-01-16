require 'test_helper'

class CoCycleRespsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @co_cycle_resp = co_cycle_resps(:one)
  end

  test "should get index" do
    get co_cycle_resps_url
    assert_response :success
  end

  test "should get new" do
    get new_co_cycle_resp_url
    assert_response :success
  end

  test "should create co_cycle_resp" do
    assert_difference('CoCycleResp.count') do
      post co_cycle_resps_url, params: { co_cycle_resp: { company_id: @co_cycle_resp.company_id, cycle_id: @co_cycle_resp.cycle_id, responsibility_id: @co_cycle_resp.responsibility_id } }
    end

    assert_redirected_to co_cycle_resp_url(CoCycleResp.last)
  end

  test "should show co_cycle_resp" do
    get co_cycle_resp_url(@co_cycle_resp)
    assert_response :success
  end

  test "should get edit" do
    get edit_co_cycle_resp_url(@co_cycle_resp)
    assert_response :success
  end

  test "should update co_cycle_resp" do
    patch co_cycle_resp_url(@co_cycle_resp), params: { co_cycle_resp: { company_id: @co_cycle_resp.company_id, cycle_id: @co_cycle_resp.cycle_id, responsibility_id: @co_cycle_resp.responsibility_id } }
    assert_redirected_to co_cycle_resp_url(@co_cycle_resp)
  end

  test "should destroy co_cycle_resp" do
    assert_difference('CoCycleResp.count', -1) do
      delete co_cycle_resp_url(@co_cycle_resp)
    end

    assert_redirected_to co_cycle_resps_url
  end
end
