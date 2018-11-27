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

ActiveRecord::Schema.define(version: 2018_11_27_184803) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "menuitems", force: :cascade do |t|
    t.string "name"
    t.bigint "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_menuitems_on_category_id"
  end

  create_table "tables", force: :cascade do |t|
    t.integer "table_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "waiter_id"
    t.bigint "menuitem_id"
    t.index ["menuitem_id"], name: "index_tables_on_menuitem_id"
    t.index ["waiter_id"], name: "index_tables_on_waiter_id"
  end

  create_table "waiters", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "pin"
    t.boolean "manager"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "menuitems", "categories"
  add_foreign_key "tables", "menuitems"
end
