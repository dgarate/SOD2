require "application_system_test_case"

class CoUserRoleCyclesTest < ApplicationSystemTestCase
  setup do
    @co_user_role_cycle = co_user_role_cycles(:one)
  end

  test "visiting the index" do
    visit co_user_role_cycles_url
    assert_selector "h1", text: "Co User Role Cycles"
  end

  test "creating a Co user role cycle" do
    visit co_user_role_cycles_url
    click_on "New Co User Role Cycle"

    fill_in "Company", with: @co_user_role_cycle.company_id
    fill_in "Cycle", with: @co_user_role_cycle.cycle_id
    fill_in "Role", with: @co_user_role_cycle.role_id
    fill_in "User", with: @co_user_role_cycle.user_id
    click_on "Create Co user role cycle"

    assert_text "Co user role cycle was successfully created"
    click_on "Back"
  end

  test "updating a Co user role cycle" do
    visit co_user_role_cycles_url
    click_on "Edit", match: :first

    fill_in "Company", with: @co_user_role_cycle.company_id
    fill_in "Cycle", with: @co_user_role_cycle.cycle_id
    fill_in "Role", with: @co_user_role_cycle.role_id
    fill_in "User", with: @co_user_role_cycle.user_id
    click_on "Update Co user role cycle"

    assert_text "Co user role cycle was successfully updated"
    click_on "Back"
  end

  test "destroying a Co user role cycle" do
    visit co_user_role_cycles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Co user role cycle was successfully destroyed"
  end
end
