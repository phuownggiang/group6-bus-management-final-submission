class Route < ApplicationRecord
    has_many:Schedules
    has_many :Tickets
    
    validates_presence_of :route_name, :pick_up_point, :drop_off_point, :distance, :duration
end
