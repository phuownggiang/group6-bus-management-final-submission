require "application_system_test_case"

class SchedulesTest < ApplicationSystemTestCase
  setup do
    @schedule = schedules(:one)
  end

  test "visiting the index" do
    visit schedules_url
    assert_selector "h1", text: "Schedules"
  end

  test "should create schedule" do
    visit schedules_url
    click_on "New schedule"

    fill_in "Arrival time", with: @schedule.arrival_time
    fill_in "Bus", with: @schedule.bus_id
    fill_in "Departure time", with: @schedule.departure_time
    fill_in "Duration", with: @schedule.duration_id
    fill_in "Frequency", with: @schedule.frequency
    fill_in "Route", with: @schedule.route_id
    fill_in "Status", with: @schedule.status
    click_on "Create Schedule"

    assert_text "Schedule was successfully created"
    click_on "Back"
  end

  test "should update Schedule" do
    visit schedule_url(@schedule)
    click_on "Edit this schedule", match: :first

    fill_in "Arrival time", with: @schedule.arrival_time
    fill_in "Bus", with: @schedule.bus_id
    fill_in "Departure time", with: @schedule.departure_time
    fill_in "Duration", with: @schedule.duration_id
    fill_in "Frequency", with: @schedule.frequency
    fill_in "Route", with: @schedule.route_id
    fill_in "Status", with: @schedule.status
    click_on "Update Schedule"

    assert_text "Schedule was successfully updated"
    click_on "Back"
  end

  test "should destroy Schedule" do
    visit schedule_url(@schedule)
    click_on "Destroy this schedule", match: :first

    assert_text "Schedule was successfully destroyed"
  end
end
