require "application_system_test_case"

class TravelersTest < ApplicationSystemTestCase
  setup do
    @traveler = travelers(:one)
  end

  test "visiting the index" do
    visit travelers_url
    assert_selector "h1", text: "Travelers"
  end

  test "creating a Traveler" do
    visit travelers_url
    click_on "New Traveler"

    fill_in "Age", with: @traveler.age
    fill_in "First name", with: @traveler.first_name
    fill_in "Ic no", with: @traveler.ic_no
    fill_in "Last name", with: @traveler.last_name
    fill_in "Phone no", with: @traveler.phone_no
    click_on "Create Traveler"

    assert_text "Traveler was successfully created"
    click_on "Back"
  end

  test "updating a Traveler" do
    visit travelers_url
    click_on "Edit", match: :first

    fill_in "Age", with: @traveler.age
    fill_in "First name", with: @traveler.first_name
    fill_in "Ic no", with: @traveler.ic_no
    fill_in "Last name", with: @traveler.last_name
    fill_in "Phone no", with: @traveler.phone_no
    click_on "Update Traveler"

    assert_text "Traveler was successfully updated"
    click_on "Back"
  end

  test "destroying a Traveler" do
    visit travelers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Traveler was successfully destroyed"
  end
end
