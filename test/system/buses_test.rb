require "application_system_test_case"

class BusesTest < ApplicationSystemTestCase
  setup do
    @bus = buses(:one)
  end

  test "visiting the index" do
    visit buses_url
    assert_selector "h1", text: "Buses"
  end

  test "should create bus" do
    visit buses_url
    click_on "New bus"

    fill_in "Bus number", with: @bus.bus_number
    fill_in "Capacity", with: @bus.capacity
    fill_in "Chasissis number", with: @bus.chasissis_number
    fill_in "Driver id", with: @bus.driver_ID_id
    fill_in "License number", with: @bus.license_number
    fill_in "Model", with: @bus.model
    fill_in "Year", with: @bus.year
    click_on "Create Bus"

    assert_text "Bus was successfully created"
    click_on "Back"
  end

  test "should update Bus" do
    visit bus_url(@bus)
    click_on "Edit this bus", match: :first

    fill_in "Bus number", with: @bus.bus_number
    fill_in "Capacity", with: @bus.capacity
    fill_in "Chasissis number", with: @bus.chasissis_number
    fill_in "Driver id", with: @bus.driver_ID_id
    fill_in "License number", with: @bus.license_number
    fill_in "Model", with: @bus.model
    fill_in "Year", with: @bus.year
    click_on "Update Bus"

    assert_text "Bus was successfully updated"
    click_on "Back"
  end

  test "should destroy Bus" do
    visit bus_url(@bus)
    click_on "Destroy this bus", match: :first

    assert_text "Bus was successfully destroyed"
  end
end
