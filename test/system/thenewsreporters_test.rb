require "application_system_test_case"

class ThenewsreportersTest < ApplicationSystemTestCase
  setup do
    @thenewsreporter = thenewsreporters(:one)
  end

  test "visiting the index" do
    visit thenewsreporters_url
    assert_selector "h1", text: "Thenewsreporters"
  end

  test "creating a Thenewsreporter" do
    visit thenewsreporters_url
    click_on "New Thenewsreporter"

    click_on "Create Thenewsreporter"

    assert_text "Thenewsreporter was successfully created"
    click_on "Back"
  end

  test "updating a Thenewsreporter" do
    visit thenewsreporters_url
    click_on "Edit", match: :first

    click_on "Update Thenewsreporter"

    assert_text "Thenewsreporter was successfully updated"
    click_on "Back"
  end

  test "destroying a Thenewsreporter" do
    visit thenewsreporters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Thenewsreporter was successfully destroyed"
  end
end
