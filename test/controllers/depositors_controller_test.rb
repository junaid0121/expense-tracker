require "test_helper"

class DepositorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @depositor = depositors(:one)
  end

  test "should get index" do
    get depositors_url
    assert_response :success
  end

  test "should get new" do
    get new_depositor_url
    assert_response :success
  end

  test "should create depositor" do
    assert_difference("Depositor.count") do
      post depositors_url, params: { depositor: { amount: @depositor.amount, budget_id: @depositor.budget_id, name: @depositor.name } }
    end

    assert_redirected_to depositor_url(Depositor.last)
  end

  test "should show depositor" do
    get depositor_url(@depositor)
    assert_response :success
  end

  test "should get edit" do
    get edit_depositor_url(@depositor)
    assert_response :success
  end

  test "should update depositor" do
    patch depositor_url(@depositor), params: { depositor: { amount: @depositor.amount, budget_id: @depositor.budget_id, name: @depositor.name } }
    assert_redirected_to depositor_url(@depositor)
  end

  test "should destroy depositor" do
    assert_difference("Depositor.count", -1) do
      delete depositor_url(@depositor)
    end

    assert_redirected_to depositors_url
  end
end
