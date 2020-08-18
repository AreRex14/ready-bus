class Seat < ApplicationRecord
    has_and_belongs_to_many :buses
    
    PAYLOAD_SCHEMA = "#{Rails.root}/app/models/schemas/seat_payload.json"
    validates :payload, presence: true, json: { message: -> (err) { err }, schema: PAYLOAD_SCHEMA }

    # serialize :payload, JsonbSerializers

    # store_accessor :payload, :ids

    # def ids_id
    #     self.ids['id']
    # end

    # def ids_labeled
    #     self.ids['labeled']
    # end

    # def ids_booked
    #     self.ids['booked']
    # end

    # def ids_booked=(value)
    #     self.ids['booked'] = value
    # end
end
