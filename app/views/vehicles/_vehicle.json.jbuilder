json.extract! vehicle, :id, :license_number, :province, :brand, :model, :year, :vehicle_type, :created_at, :updated_at
json.url vehicle_url(vehicle, format: :json)
