require "application_system_test_case"

class CoCycleRespsTest < ApplicationSystemTestCase
  setup do
    @co_cycle_resp = co_cycle_resps(:one)
  end

  test "visiting the index" do
    visit co_cycle_resps_url
    assert_selector "h1", text: "Co Cycle Resps"
  end

  test "creating a Co cycle resp" do
    visit co_cycle_resps_url
    click_on "New Co Cycle Resp"

    fill_in "Company", with: @co_cycle_resp.company_id
    fill_in "Cycle", with: @co_cycle_resp.cycle_id
    fill_in "Responsibility", with: @co_cycle_resp.responsibility_id
    click_on "Create Co cycle resp"

    assert_text "Co cycle resp was successfully created"
    click_on "Back"
  end

  test "updating a Co cycle resp" do
    visit co_cycle_resps_url
    click_on "Edit", match: :first

    fill_in "Company", with: @co_cycle_resp.company_id
    fill_in "Cycle", with: @co_cycle_resp.cycle_id
    fill_in "Responsibility", with: @co_cycle_resp.responsibility_id
    click_on "Update Co cycle resp"

    assert_text "Co cycle resp was successfully updated"
    click_on "Back"
  end

  test "destroying a Co cycle resp" do
    visit co_cycle_resps_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Co cycle resp was successfully destroyed"
  end
end
