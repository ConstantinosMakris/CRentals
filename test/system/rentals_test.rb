require "application_system_test_case"

class RentalsTest < ApplicationSystemTestCase
  setup do
    @rental = rentals(:one)
  end

  test "visiting the index" do
    visit rentals_url
    assert_selector "h1", text: "Rentals"
  end

  test "creating a Rental" do
    visit rentals_url
    click_on "New Rental"

    fill_in "Address", with: @rental.address
    fill_in "Car", with: @rental.car_id
    fill_in "Comments", with: @rental.comments
    fill_in "End", with: @rental.end
    fill_in "Start", with: @rental.start
    fill_in "User", with: @rental.user_id
    click_on "Create Rental"

    assert_text "Rental was successfully created"
    click_on "Back"
  end

  test "updating a Rental" do
    visit rentals_url
    click_on "Edit", match: :first

    fill_in "Address", with: @rental.address
    fill_in "Car", with: @rental.car_id
    fill_in "Comments", with: @rental.comments
    fill_in "End", with: @rental.end
    fill_in "Start", with: @rental.start
    fill_in "User", with: @rental.user_id
    click_on "Update Rental"

    assert_text "Rental was successfully updated"
    click_on "Back"
  end

  test "destroying a Rental" do
    visit rentals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rental was successfully destroyed"
  end
end
