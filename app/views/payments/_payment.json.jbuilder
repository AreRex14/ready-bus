json.extract! payment, :id, :ccnumber, :cvcnumber, ::ccexpmonth, :ccexpyear, :created_at, :updated_at
json.url payment_url(payment, format: :json)
