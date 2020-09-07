json.extract! flight, :id, :flightNumber, :departureAirfield, :arrivalAirfield, :client, :created_at, :updated_at
json.url flight_url(flight, format: :json)
