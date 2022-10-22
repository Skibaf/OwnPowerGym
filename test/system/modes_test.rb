require "application_system_test_case"

class ModesTest < ApplicationSystemTestCase
  setup do
    @mode = modes(:one)
  end

  test "visiting the index" do
    visit modes_url
    assert_selector "h1", text: "Modes"
  end

  test "should create mode" do
    visit modes_url
    click_on "New mode"

    fill_in "Mode", with: @mode.mode
    click_on "Create Mode"

    assert_text "Mode was successfully created"
    click_on "Back"
  end

  test "should update Mode" do
    visit mode_url(@mode)
    click_on "Edit this mode", match: :first

    fill_in "Mode", with: @mode.mode
    click_on "Update Mode"

    assert_text "Mode was successfully updated"
    click_on "Back"
  end

  test "should destroy Mode" do
    visit mode_url(@mode)
    click_on "Destroy this mode", match: :first

    assert_text "Mode was successfully destroyed"
  end
end
