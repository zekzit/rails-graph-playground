require "application_system_test_case"

class VehicleCommentsTest < ApplicationSystemTestCase
  setup do
    @vehicle_comment = vehicle_comments(:one)
  end

  test "visiting the index" do
    visit vehicle_comments_url
    assert_selector "h1", text: "Vehicle Comments"
  end

  test "creating a Vehicle comment" do
    visit vehicle_comments_url
    click_on "New Vehicle Comment"

    click_on "Create Vehicle comment"

    assert_text "Vehicle comment was successfully created"
    click_on "Back"
  end

  test "updating a Vehicle comment" do
    visit vehicle_comments_url
    click_on "Edit", match: :first

    click_on "Update Vehicle comment"

    assert_text "Vehicle comment was successfully updated"
    click_on "Back"
  end

  test "destroying a Vehicle comment" do
    visit vehicle_comments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Vehicle comment was successfully destroyed"
  end
end
