json.extract! ticket, :id, :passenger_id, :route_id, :bus_id, :booking_date, :seat_number, :fare, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)
