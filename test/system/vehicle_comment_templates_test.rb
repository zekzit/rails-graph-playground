require "application_system_test_case"

class VehicleCommentTemplatesTest < ApplicationSystemTestCase
  setup do
    @vehicle_comment_template = vehicle_comment_templates(:one)
  end

  test "visiting the index" do
    visit vehicle_comment_templates_url
    assert_selector "h1", text: "Vehicle Comment Templates"
  end

  test "creating a Vehicle comment template" do
    visit vehicle_comment_templates_url
    click_on "New Vehicle Comment Template"

    fill_in "Comment", with: @vehicle_comment_template.comment
    fill_in "Score", with: @vehicle_comment_template.score
    click_on "Create Vehicle comment template"

    assert_text "Vehicle comment template was successfully created"
    click_on "Back"
  end

  test "updating a Vehicle comment template" do
    visit vehicle_comment_templates_url
    click_on "Edit", match: :first

    fill_in "Comment", with: @vehicle_comment_template.comment
    fill_in "Score", with: @vehicle_comment_template.score
    click_on "Update Vehicle comment template"

    assert_text "Vehicle comment template was successfully updated"
    click_on "Back"
  end

  test "destroying a Vehicle comment template" do
    visit vehicle_comment_templates_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Vehicle comment template was successfully destroyed"
  end
end
