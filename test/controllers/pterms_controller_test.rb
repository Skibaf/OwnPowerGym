require "test_helper"

class PtermsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pterm = pterms(:one)
  end

  test "should get index" do
    get pterms_url
    assert_response :success
  end

  test "should get new" do
    get new_pterm_url
    assert_response :success
  end

  test "should create pterm" do
    assert_difference("Pterm.count") do
      post pterms_url, params: { pterm: { pterm: @pterm.pterm } }
    end

    assert_redirected_to pterm_url(Pterm.last)
  end

  test "should show pterm" do
    get pterm_url(@pterm)
    assert_response :success
  end

  test "should get edit" do
    get edit_pterm_url(@pterm)
    assert_response :success
  end

  test "should update pterm" do
    patch pterm_url(@pterm), params: { pterm: { pterm: @pterm.pterm } }
    assert_redirected_to pterm_url(@pterm)
  end

  test "should destroy pterm" do
    assert_difference("Pterm.count", -1) do
      delete pterm_url(@pterm)
    end

    assert_redirected_to pterms_url
  end
end
