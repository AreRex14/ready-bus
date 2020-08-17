class Schedule < ApplicationRecord
    belongs_to :bus
    has_and_belongs_to_many :stations
    has_many :bookings
end
