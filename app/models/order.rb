class Order < ApplicationRecord
  belongs_to :user
  belongs_to :farm
  has_many :product_in_orders, dependent: :destroy

  def item_for(product)
    product_in_orders.where(product: product).first_or_initialize
  end

  def to_s
    "Commande n°#{id}"
  end
end
