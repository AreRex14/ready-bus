class Bus < ApplicationRecord
    belongs_to :operator
    has_and_belongs_to_many :seats
    has_many :schedules
end
