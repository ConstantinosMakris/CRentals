require "application_system_test_case"

class CarsTest < ApplicationSystemTestCase
  setup do
    @car = cars(:one)
  end

  test "visiting the index" do
    visit cars_url
    assert_selector "h1", text: "Cars"
  end

  test "creating a Car" do
    visit cars_url
    click_on "New Car"

    check "Ac" if @car.ac
    fill_in "Engine", with: @car.engine
    fill_in "Model", with: @car.model
    fill_in "Priceday", with: @car.priceDay
    fill_in "Priceweek", with: @car.priceWeek
    fill_in "Seats", with: @car.seats
    fill_in "Transmission", with: @car.transmission
    click_on "Create Car"

    assert_text "Car was successfully created"
    click_on "Back"
  end

  test "updating a Car" do
    visit cars_url
    click_on "Edit", match: :first

    check "Ac" if @car.ac
    fill_in "Engine", with: @car.engine
    fill_in "Model", with: @car.model
    fill_in "Priceday", with: @car.priceDay
    fill_in "Priceweek", with: @car.priceWeek
    fill_in "Seats", with: @car.seats
    fill_in "Transmission", with: @car.transmission
    click_on "Update Car"

    assert_text "Car was successfully updated"
    click_on "Back"
  end

  test "destroying a Car" do
    visit cars_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Car was successfully destroyed"
  end
end
