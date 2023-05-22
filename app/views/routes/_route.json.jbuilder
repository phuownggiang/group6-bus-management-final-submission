json.extract! route, :id, :route_name, :pick_up_point, :drop_off_point, :distance, :duration, :created_at, :updated_at
json.url route_url(route, format: :json)
