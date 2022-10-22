require "application_system_test_case"

class PtermsTest < ApplicationSystemTestCase
  setup do
    @pterm = pterms(:one)
  end

  test "visiting the index" do
    visit pterms_url
    assert_selector "h1", text: "Pterms"
  end

  test "should create pterm" do
    visit pterms_url
    click_on "New pterm"

    fill_in "Pterm", with: @pterm.pterm
    click_on "Create Pterm"

    assert_text "Pterm was successfully created"
    click_on "Back"
  end

  test "should update Pterm" do
    visit pterm_url(@pterm)
    click_on "Edit this pterm", match: :first

    fill_in "Pterm", with: @pterm.pterm
    click_on "Update Pterm"

    assert_text "Pterm was successfully updated"
    click_on "Back"
  end

  test "should destroy Pterm" do
    visit pterm_url(@pterm)
    click_on "Destroy this pterm", match: :first

    assert_text "Pterm was successfully destroyed"
  end
end
