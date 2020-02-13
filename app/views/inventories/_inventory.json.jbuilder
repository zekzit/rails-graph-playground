json.extract! inventory, :id, :bought_date, :price, :brand, :model, :created_at, :updated_at
json.url inventory_url(inventory, format: :json)
