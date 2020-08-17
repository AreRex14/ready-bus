class Booking < ApplicationRecord
    belongs_to :schedule
    has_one :traveler
end
