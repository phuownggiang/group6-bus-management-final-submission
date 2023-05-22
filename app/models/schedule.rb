class Schedule < ApplicationRecord
  belongs_to :route
  belongs_to :bus
  belongs_to :duration

  validates_presence_of :route, :bus, :departure_time, :arrival_time, :duration, :frequency, :weekly, :status
end
