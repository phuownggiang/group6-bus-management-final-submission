class Schedule < ApplicationRecord
  belongs_to :route
  belongs_to :bus
  validates_presence_of :route, :bus, :departure_time, :duration

  before_save :calculate_arrival_time

  def calculate_arrival_time
    if departure_time && duration
      self.arrival_time = departure_time + duration.minutes
    end
  end
end
