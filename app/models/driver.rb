class Driver < ApplicationRecord
    validates_presence_of :name, :phone_number, :address, :gender, :date_of_birth, :nationality
    validates_uniqueness_of :phone_number

    validate :date_of_birth_cannot_be_in_the_future
    def date_of_birth_cannot_be_in_the_future
        errors.add(:date_of_birth,"can't be in the future") if date_of_birth.present? && date_of_birth > Datetime.current
end
