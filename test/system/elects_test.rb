require "application_system_test_case"

class ElectsTest < ApplicationSystemTestCase
  setup do
    @elect = elects(:one)
  end

  test "visiting the index" do
    visit elects_url
    assert_selector "h1", text: "Elects"
  end

  test "should create elect" do
    visit elects_url
    click_on "New elect"

    fill_in "Facts", with: @elect.facts
    fill_in "Name", with: @elect.name
    click_on "Create Elect"

    assert_text "Elect was successfully created"
    click_on "Back"
  end

  test "should update Elect" do
    visit elect_url(@elect)
    click_on "Edit this elect", match: :first

    fill_in "Facts", with: @elect.facts
    fill_in "Name", with: @elect.name
    click_on "Update Elect"

    assert_text "Elect was successfully updated"
    click_on "Back"
  end

  test "should destroy Elect" do
    visit elect_url(@elect)
    click_on "Destroy this elect", match: :first

    assert_text "Elect was successfully destroyed"
  end
end
