class Ticket < ApplicationRecord
  belongs_to :passenger
  belongs_to :route
  belongs_to :bus

  validates_presence_of :passenger, :route, :bus, :booking_date, :seat_number, :fare
  validates_numericality_of :seat_number
end
