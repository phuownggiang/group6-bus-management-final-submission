class Schedule < ApplicationRecord
  belongs_to :route
  belongs_to :bus
  belongs_to :duration
  
  validates_presence_of :route, :bus, :departure_time, :arrival_time, :duration, :frequency, :status
  validates_numericality_of :duration
end
