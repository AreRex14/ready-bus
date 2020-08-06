class Bus < ApplicationRecord
    belongs_to :operator
    has_many :schedules
end
