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

ActiveRecord::Schema.define(version: 20170905091148) do

  create_table "bills", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "customers_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customers_id"], name: "index_bills_on_customers_id"
  end

  create_table "categories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name", limit: 100
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name", limit: 100
    t.string "email", limit: 100
    t.string "address", limit: 200
    t.string "phonenumber", limit: 13
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "detail_bills", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "bills_id"
    t.bigint "products_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bills_id"], name: "index_detail_bills_on_bills_id"
    t.index ["products_id"], name: "index_detail_bills_on_products_id"
  end

  create_table "products", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name", limit: 50
    t.integer "price"
    t.string "description", limit: 1000
    t.string "img", limit: 200
    t.integer "product_left"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "categories_id"
    t.index ["categories_id"], name: "index_products_on_categories_id"
  end

  add_foreign_key "bills", "customers", column: "customers_id"
  add_foreign_key "detail_bills", "bills", column: "bills_id"
  add_foreign_key "detail_bills", "products", column: "products_id"
  add_foreign_key "products", "categories", column: "categories_id"
end
