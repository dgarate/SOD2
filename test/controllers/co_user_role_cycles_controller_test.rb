require 'test_helper'

class CoUserRoleCyclesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @co_user_role_cycle = co_user_role_cycles(:one)
  end

  test "should get index" do
    get co_user_role_cycles_url
    assert_response :success
  end

  test "should get new" do
    get new_co_user_role_cycle_url
    assert_response :success
  end

  test "should create co_user_role_cycle" do
    assert_difference('CoUserRoleCycle.count') do
      post co_user_role_cycles_url, params: { co_user_role_cycle: { company_id: @co_user_role_cycle.company_id, cycle_id: @co_user_role_cycle.cycle_id, role_id: @co_user_role_cycle.role_id, user_id: @co_user_role_cycle.user_id } }
    end

    assert_redirected_to co_user_role_cycle_url(CoUserRoleCycle.last)
  end

  test "should show co_user_role_cycle" do
    get co_user_role_cycle_url(@co_user_role_cycle)
    assert_response :success
  end

  test "should get edit" do
    get edit_co_user_role_cycle_url(@co_user_role_cycle)
    assert_response :success
  end

  test "should update co_user_role_cycle" do
    patch co_user_role_cycle_url(@co_user_role_cycle), params: { co_user_role_cycle: { company_id: @co_user_role_cycle.company_id, cycle_id: @co_user_role_cycle.cycle_id, role_id: @co_user_role_cycle.role_id, user_id: @co_user_role_cycle.user_id } }
    assert_redirected_to co_user_role_cycle_url(@co_user_role_cycle)
  end

  test "should destroy co_user_role_cycle" do
    assert_difference('CoUserRoleCycle.count', -1) do
      delete co_user_role_cycle_url(@co_user_role_cycle)
    end

    assert_redirected_to co_user_role_cycles_url
  end
end
