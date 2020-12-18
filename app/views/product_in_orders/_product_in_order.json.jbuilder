json.extract! product_in_order, :id, :order_id, :product_id, :quantity, :created_at, :updated_at
json.url product_in_order_url(product_in_order, format: :json)
