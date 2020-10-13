# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_10_08_030125) do

  create_table "campaigns", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "image"
    t.boolean "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "collections", force: :cascade do |t|
    t.string "name"
    t.string "title"
    t.text "description"
    t.string "image"
    t.boolean "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "colors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "designers", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "image"
    t.boolean "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "genders", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "images", force: :cascade do |t|
    t.string "url"
    t.integer "product_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["product_id"], name: "index_images_on_product_id"
  end

  create_table "mixes", force: :cascade do |t|
    t.string "name"
    t.boolean "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "order_iterms", force: :cascade do |t|
    t.integer "order_id", null: false
    t.integer "product_id", null: false
    t.integer "price"
    t.integer "quantity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["order_id"], name: "index_order_iterms_on_order_id"
    t.index ["product_id"], name: "index_order_iterms_on_product_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "email"
    t.string "phone"
    t.text "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.text "highlights"
    t.string "composition"
    t.integer "price"
    t.boolean "status"
    t.integer "color_id", null: false
    t.integer "size_id", null: false
    t.integer "categori_id", null: false
    t.integer "gender_id", null: false
    t.integer "type_id", null: false
    t.integer "campaign_id", null: false
    t.integer "collection_id", null: false
    t.integer "designer_id", null: false
    t.integer "mix_id", null: false
    t.integer "sale_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["campaign_id"], name: "index_products_on_campaign_id"
    t.index ["categori_id"], name: "index_products_on_categori_id"
    t.index ["collection_id"], name: "index_products_on_collection_id"
    t.index ["color_id"], name: "index_products_on_color_id"
    t.index ["designer_id"], name: "index_products_on_designer_id"
    t.index ["gender_id"], name: "index_products_on_gender_id"
    t.index ["mix_id"], name: "index_products_on_mix_id"
    t.index ["sale_id"], name: "index_products_on_sale_id"
    t.index ["size_id"], name: "index_products_on_size_id"
    t.index ["type_id"], name: "index_products_on_type_id"
  end

  create_table "sales", force: :cascade do |t|
    t.string "name"
    t.string "title"
    t.text "description"
    t.string "image"
    t.boolean "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sizes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "images", "products"
  add_foreign_key "order_iterms", "orders"
  add_foreign_key "order_iterms", "products"
  add_foreign_key "orders", "users"
  add_foreign_key "products", "campaigns"
  add_foreign_key "products", "categoris"
  add_foreign_key "products", "collections"
  add_foreign_key "products", "colors"
  add_foreign_key "products", "designers"
  add_foreign_key "products", "genders"
  add_foreign_key "products", "mixes"
  add_foreign_key "products", "sales"
  add_foreign_key "products", "sizes"
  add_foreign_key "products", "types"
end
