class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.references :farm, null: false, foreign_key: true
      t.string :name
      t.string :description
      t.float :price
      t.string :product_unit
      t.integer :quantity
      t.boolean :active

      t.timestamps
    end
  end
end
