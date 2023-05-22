class Passenger < ApplicationRecord
    validates_presence_of :name, :contact,:address, :age, :gender
