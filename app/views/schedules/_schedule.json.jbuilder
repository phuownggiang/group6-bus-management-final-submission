json.extract! schedule, :id, :route_id, :bus_id, :departure_time, :arrival_time, :duration, :frequency, :status, :created_at, :updated_at
json.url schedule_url(schedule, format: :json)
