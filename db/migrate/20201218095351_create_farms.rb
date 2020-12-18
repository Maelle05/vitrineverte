class CreateFarms < ActiveRecord::Migration[6.1]
  def change
    create_table :farms do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.string :address
      t.string :zipcode
      t.string :city
      t.text :hours
      t.text :payment
      t.string :phone
      t.string :email
      t.string :description

      t.timestamps
    end
  end
end
