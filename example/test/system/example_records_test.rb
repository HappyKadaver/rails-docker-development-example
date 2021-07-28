require "application_system_test_case"

class ExampleRecordsTest < ApplicationSystemTestCase
  setup do
    @example_record = example_records(:one)
  end

  test "visiting the index" do
    visit example_records_url
    assert_selector "h1", text: "Example Records"
  end

  test "creating a Example record" do
    visit example_records_url
    click_on "New Example Record"

    fill_in "Foo", with: @example_record.foo
    click_on "Create Example record"

    assert_text "Example record was successfully created"
    click_on "Back"
  end

  test "updating a Example record" do
    visit example_records_url
    click_on "Edit", match: :first

    fill_in "Foo", with: @example_record.foo
    click_on "Update Example record"

    assert_text "Example record was successfully updated"
    click_on "Back"
  end

  test "destroying a Example record" do
    visit example_records_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Example record was successfully destroyed"
  end
end
