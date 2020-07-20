class Booking < ApplicationRecord
    belongs_to :traveler
    belongs_to :payment
end
