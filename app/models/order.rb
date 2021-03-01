class Order < ApplicationRecord
  belongs_to :user
  belongs_to :farm
  has_many :product_in_orders
end
