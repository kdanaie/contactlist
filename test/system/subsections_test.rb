require "application_system_test_case"

class SubsectionsTest < ApplicationSystemTestCase
  setup do
    @subsection = subsections(:one)
  end

  test "visiting the index" do
    visit subsections_url
    assert_selector "h1", text: "Subsections"
  end

  test "creating a Subsection" do
    visit subsections_url
    click_on "New Subsection"

    fill_in "Description", with: @subsection.description
    fill_in "Link", with: @subsection.link
    fill_in "Name", with: @subsection.name
    fill_in "Position", with: @subsection.position
    fill_in "Shortname", with: @subsection.shortname
    fill_in "Status", with: @subsection.status
    click_on "Create Subsection"

    assert_text "Subsection was successfully created"
    click_on "Back"
  end

  test "updating a Subsection" do
    visit subsections_url
    click_on "Edit", match: :first

    fill_in "Description", with: @subsection.description
    fill_in "Link", with: @subsection.link
    fill_in "Name", with: @subsection.name
    fill_in "Position", with: @subsection.position
    fill_in "Shortname", with: @subsection.shortname
    fill_in "Status", with: @subsection.status
    click_on "Update Subsection"

    assert_text "Subsection was successfully updated"
    click_on "Back"
  end

  test "destroying a Subsection" do
    visit subsections_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Subsection was successfully destroyed"
  end
end
