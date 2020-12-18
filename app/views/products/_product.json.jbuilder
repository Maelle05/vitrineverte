json.extract! product, :id, :farm_id, :name, :description, :price, :product_unit, :quantity, :active, :created_at, :updated_at
json.url product_url(product, format: :json)
