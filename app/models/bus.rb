class Bus < ApplicationRecord
  belongs_to :driver
  has_many :schedules
  has_many :Tickets
  
  validates_presence_of :bus_number, :driver, :license_number, :chasissis_number, :model, :capacity, :year
  validates_numericality_of :bus_number

  validate :year_of_manufacture_cannot_be_in_the_future
    def year_of_manufacture_cannot_be_in_the_future
        errors.add(:year,"can't be in the future") if year.present? && year > Date.current
    end

end
