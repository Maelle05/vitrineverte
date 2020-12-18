class CreateProductInOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :product_in_orders do |t|
      t.references :order, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
