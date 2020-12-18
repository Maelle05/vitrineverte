# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_12_18_113543) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "farms", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "name"
    t.string "address"
    t.string "zipcode"
    t.string "city"
    t.text "hours"
    t.text "payment"
    t.string "phone"
    t.string "email"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_farms_on_user_id"
  end

  create_table "orders", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "farm_id", null: false
    t.boolean "ready"
    t.boolean "taken"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["farm_id"], name: "index_orders_on_farm_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "product_in_orders", force: :cascade do |t|
    t.bigint "order_id", null: false
    t.bigint "product_id", null: false
    t.integer "quantity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["order_id"], name: "index_product_in_orders_on_order_id"
    t.index ["product_id"], name: "index_product_in_orders_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.bigint "farm_id", null: false
    t.string "name"
    t.string "description"
    t.float "price"
    t.string "product_unit"
    t.integer "quantity"
    t.boolean "active"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["farm_id"], name: "index_products_on_farm_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "first_name", default: ""
    t.string "last_name", default: ""
    t.string "phone", default: ""
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "farms", "users"
  add_foreign_key "orders", "farms"
  add_foreign_key "orders", "users"
  add_foreign_key "product_in_orders", "orders"
  add_foreign_key "product_in_orders", "products"
  add_foreign_key "products", "farms"
end
