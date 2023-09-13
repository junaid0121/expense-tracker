require "application_system_test_case"

class DepositorsTest < ApplicationSystemTestCase
  setup do
    @depositor = depositors(:one)
  end

  test "visiting the index" do
    visit depositors_url
    assert_selector "h1", text: "Depositors"
  end

  test "should create depositor" do
    visit depositors_url
    click_on "New depositor"

    fill_in "Amount", with: @depositor.amount
    fill_in "Budget", with: @depositor.budget_id
    fill_in "Name", with: @depositor.name
    click_on "Create Depositor"

    assert_text "Depositor was successfully created"
    click_on "Back"
  end

  test "should update Depositor" do
    visit depositor_url(@depositor)
    click_on "Edit this depositor", match: :first

    fill_in "Amount", with: @depositor.amount
    fill_in "Budget", with: @depositor.budget_id
    fill_in "Name", with: @depositor.name
    click_on "Update Depositor"

    assert_text "Depositor was successfully updated"
    click_on "Back"
  end

  test "should destroy Depositor" do
    visit depositor_url(@depositor)
    click_on "Destroy this depositor", match: :first

    assert_text "Depositor was successfully destroyed"
  end
end
