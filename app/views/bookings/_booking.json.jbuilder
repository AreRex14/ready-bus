json.extract! booking, :id, :seat_label, :fare, :created_at, :updated_at
json.url booking_url(booking, format: :json)
