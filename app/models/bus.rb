class Bus < ApplicationRecord
  belongs_to :driver_ID
  has_many :Schedules
  has_many :Tickets
  
  validates_presence_of :bus_number, :driver_ID, :license_number, :chasissis_number, :model, :capacity, :year
  validates_uniqueness_of :bus_number, :chasissis_number, :license_number
  validates_numericality_of :bus_number
end
