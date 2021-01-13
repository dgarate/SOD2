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

ActiveRecord::Schema.define(version: 2021_01_13_023833) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "co_user_role_cycles", force: :cascade do |t|
    t.bigint "company_id", null: false
    t.bigint "user_id", null: false
    t.bigint "role_id", null: false
    t.bigint "cycle_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["company_id"], name: "index_co_user_role_cycles_on_company_id"
    t.index ["cycle_id"], name: "index_co_user_role_cycles_on_cycle_id"
    t.index ["role_id"], name: "index_co_user_role_cycles_on_role_id"
    t.index ["user_id"], name: "index_co_user_role_cycles_on_user_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.date "end_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cycles", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.date "end_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.date "end_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.date "end_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "co_user_role_cycles", "companies"
  add_foreign_key "co_user_role_cycles", "cycles"
  add_foreign_key "co_user_role_cycles", "roles"
  add_foreign_key "co_user_role_cycles", "users"
end
