json.extract! order, :id, :user_id, :farm_id, :ready, :taken, :created_at, :updated_at
json.url order_url(order, format: :json)
