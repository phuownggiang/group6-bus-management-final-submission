require "application_system_test_case"

class RoutesTest < ApplicationSystemTestCase
  setup do
    @route = routes(:one)
  end

  test "visiting the index" do
    visit routes_url
    assert_selector "h1", text: "Routes"
  end

  test "should create route" do
    visit routes_url
    click_on "New route"

    fill_in "Distance", with: @route.distance
    fill_in "Drop off point", with: @route.drop_off_point
    fill_in "Duration", with: @route.duration
    fill_in "Pick up point", with: @route.pick_up_point
    fill_in "Route name", with: @route.route_name
    click_on "Create Route"

    assert_text "Route was successfully created"
    click_on "Back"
  end

  test "should update Route" do
    visit route_url(@route)
    click_on "Edit this route", match: :first

    fill_in "Distance", with: @route.distance
    fill_in "Drop off point", with: @route.drop_off_point
    fill_in "Duration", with: @route.duration
    fill_in "Pick up point", with: @route.pick_up_point
    fill_in "Route name", with: @route.route_name
    click_on "Update Route"

    assert_text "Route was successfully updated"
    click_on "Back"
  end

  test "should destroy Route" do
    visit route_url(@route)
    click_on "Destroy this route", match: :first

    assert_text "Route was successfully destroyed"
  end
end
