class Traveler < ApplicationRecord
    belongs_to :passenger
    has_many :bookings
    accepts_nested_attributes_for :bookings
end
