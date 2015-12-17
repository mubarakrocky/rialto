# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20151216175719) do

  create_table "ecommerce_addresses", force: :cascade do |t|
    t.integer  "associated_id",   limit: 4
    t.string   "associated_type", limit: 255
    t.integer  "country",         limit: 4
    t.string   "state",           limit: 255
    t.string   "district",        limit: 255
    t.string   "city",            limit: 255
    t.string   "street",          limit: 255
    t.string   "postal_code",     limit: 255
    t.float    "lng",             limit: 24
    t.float    "alt",             limit: 24
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "ecommerce_categories", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.integer  "parent_id",   limit: 4
    t.integer  "position",    limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "ecommerce_images", force: :cascade do |t|
    t.integer  "associated_id",        limit: 4
    t.string   "associated_type",      limit: 255
    t.string   "picture_file_name",    limit: 255
    t.string   "picture_content_type", limit: 255
    t.string   "picture_file_size",    limit: 255
    t.datetime "picture_updated_at"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  create_table "ecommerce_inventories", force: :cascade do |t|
    t.integer  "unit",         limit: 4
    t.integer  "product_id",   limit: 4
    t.integer  "store_id",     limit: 4
    t.string   "sku",          limit: 255
    t.float    "quantity",     limit: 24
    t.boolean  "is_available"
    t.decimal  "price",                    precision: 10
    t.decimal  "cost",                     precision: 10
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
  end

  add_index "ecommerce_inventories", ["product_id"], name: "index_ecommerce_inventories_on_product_id", using: :btree
  add_index "ecommerce_inventories", ["store_id"], name: "index_ecommerce_inventories_on_store_id", using: :btree

  create_table "ecommerce_merchants", force: :cascade do |t|
    t.string   "name",          limit: 255
    t.string   "description",   limit: 255
    t.string   "contact_name",  limit: 255
    t.string   "contact_email", limit: 255
    t.string   "contact_phone", limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "ecommerce_products", force: :cascade do |t|
    t.string   "name",            limit: 255
    t.text     "description",     limit: 65535
    t.boolean  "is_active"
    t.integer  "product_type",    limit: 4
    t.string   "display_name",    limit: 255
    t.integer  "property_set_id", limit: 4
    t.boolean  "is_master"
    t.integer  "parent_id",       limit: 4
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "ecommerce_products", ["property_set_id"], name: "index_ecommerce_products_on_property_set_id", using: :btree

  create_table "ecommerce_properties", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "description", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "ecommerce_properties_property_sets", force: :cascade do |t|
    t.integer "property_id",     limit: 4
    t.integer "property_set_id", limit: 4
  end

  add_index "ecommerce_properties_property_sets", ["property_id"], name: "index_ecommerce_properties_property_sets_on_property_id", using: :btree
  add_index "ecommerce_properties_property_sets", ["property_set_id"], name: "index_ecommerce_properties_property_sets_on_property_set_id", using: :btree

  create_table "ecommerce_property_sets", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "description", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "ecommerce_property_values", force: :cascade do |t|
    t.integer  "property_id", limit: 4
    t.string   "value",       limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "ecommerce_property_values", ["property_id"], name: "index_ecommerce_property_values_on_property_id", using: :btree

  create_table "ecommerce_stores", force: :cascade do |t|
    t.integer  "merchant_id", limit: 4
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "ecommerce_stores", ["merchant_id"], name: "index_ecommerce_stores_on_merchant_id", using: :btree

  create_table "ecommerce_users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.string   "name",                   limit: 255
    t.string   "mobile_no",              limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "ecommerce_users", ["email"], name: "index_ecommerce_users_on_email", unique: true, using: :btree
  add_index "ecommerce_users", ["reset_password_token"], name: "index_ecommerce_users_on_reset_password_token", unique: true, using: :btree

  create_table "fish_orders", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "logistic_devices", force: :cascade do |t|
    t.string   "token",       limit: 255
    t.integer  "device_type", limit: 4,   default: 0
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

end
