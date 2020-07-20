class Booking < ApplicationRecord
    belongs_to :traveler
    has_one :payment
end
