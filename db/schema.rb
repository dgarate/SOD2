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

ActiveRecord::Schema.define(version: 2021_01_17_231842) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "co_cycle_resps", force: :cascade do |t|
    t.bigint "company_id", null: false
    t.bigint "cycle_id", null: false
    t.bigint "responsibility_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["company_id"], name: "index_co_cycle_resps_on_company_id"
    t.index ["cycle_id"], name: "index_co_cycle_resps_on_cycle_id"
    t.index ["responsibility_id"], name: "index_co_cycle_resps_on_responsibility_id"
  end

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

  create_table "conflicts", force: :cascade do |t|
    t.bigint "company_id", null: false
    t.bigint "cycle_id", null: false
    t.bigint "responsibility_id", null: false
    t.bigint "control_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["company_id"], name: "index_conflicts_on_company_id"
    t.index ["control_id"], name: "index_conflicts_on_control_id"
    t.index ["cycle_id"], name: "index_conflicts_on_cycle_id"
    t.index ["responsibility_id"], name: "index_conflicts_on_responsibility_id"
  end

  create_table "controls", force: :cascade do |t|
    t.string "name"
    t.text "description"
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

  create_table "responsibilities", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "resp_type"
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
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "co_cycle_resps", "companies"
  add_foreign_key "co_cycle_resps", "cycles"
  add_foreign_key "co_cycle_resps", "responsibilities"
  add_foreign_key "co_user_role_cycles", "companies"
  add_foreign_key "co_user_role_cycles", "cycles"
  add_foreign_key "co_user_role_cycles", "roles"
  add_foreign_key "co_user_role_cycles", "users"
  add_foreign_key "conflicts", "companies"
  add_foreign_key "conflicts", "controls"
  add_foreign_key "conflicts", "cycles"
  add_foreign_key "conflicts", "responsibilities"
end
