class Ticket < ApplicationRecord
  belongs_to :passenger
  belongs_to :route
  belongs_to :bus

  validates_presence_of :passenger, :route, :bus, :booking_date, :seat_number

  before_save :set_default_fare
  
  private

  def set_default_fare
    self.fare ||= 7000
  end
end
