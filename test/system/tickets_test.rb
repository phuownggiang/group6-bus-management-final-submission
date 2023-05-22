require "application_system_test_case"

class TicketsTest < ApplicationSystemTestCase
  setup do
    @ticket = tickets(:one)
  end

  test "visiting the index" do
    visit tickets_url
    assert_selector "h1", text: "Tickets"
  end

  test "should create ticket" do
    visit tickets_url
    click_on "New ticket"

    fill_in "Booking date", with: @ticket.booking_date
    fill_in "Bus", with: @ticket.bus_id
    fill_in "Fare", with: @ticket.fare
    fill_in "Passenger", with: @ticket.passenger_id
    fill_in "Route", with: @ticket.route_id
    fill_in "Seat number", with: @ticket.seat_number
    click_on "Create Ticket"

    assert_text "Ticket was successfully created"
    click_on "Back"
  end

  test "should update Ticket" do
    visit ticket_url(@ticket)
    click_on "Edit this ticket", match: :first

    fill_in "Booking date", with: @ticket.booking_date
    fill_in "Bus", with: @ticket.bus_id
    fill_in "Fare", with: @ticket.fare
    fill_in "Passenger", with: @ticket.passenger_id
    fill_in "Route", with: @ticket.route_id
    fill_in "Seat number", with: @ticket.seat_number
    click_on "Update Ticket"

    assert_text "Ticket was successfully updated"
    click_on "Back"
  end

  test "should destroy Ticket" do
    visit ticket_url(@ticket)
    click_on "Destroy this ticket", match: :first

    assert_text "Ticket was successfully destroyed"
  end
end
