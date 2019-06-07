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

ActiveRecord::Schema.define(version: 2019_06_05_234339) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "case_actions", force: :cascade do |t|
    t.date "due_date"
    t.string "status"
    t.string "title"
    t.string "description"
    t.string "report"
    t.bigint "case_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "photo"
    t.index ["case_id"], name: "index_case_actions_on_case_id"
  end

  create_table "case_risks", force: :cascade do |t|
    t.bigint "case_id"
    t.bigint "risk_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["case_id"], name: "index_case_risks_on_case_id"
    t.index ["risk_id"], name: "index_case_risks_on_risk_id"
  end

  create_table "case_safety_factors", force: :cascade do |t|
    t.string "reason"
    t.bigint "case_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "safety_factor_id"
    t.index ["case_id"], name: "index_case_safety_factors_on_case_id"
    t.index ["safety_factor_id"], name: "index_case_safety_factors_on_safety_factor_id"
  end

  create_table "cases", force: :cascade do |t|
    t.date "start_date"
    t.date "end_date"
    t.string "family_name"
    t.string "child_name"
    t.string "address"
    t.string "state"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "case_number"
    t.string "phone_number"
    t.string "summary"
    t.index ["user_id"], name: "index_cases_on_user_id"
  end

  create_table "risks", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "category"
  end

  create_table "safety_factors", force: :cascade do |t|
    t.string "fact"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "case_actions", "cases"
  add_foreign_key "case_risks", "cases"
  add_foreign_key "case_risks", "risks"
  add_foreign_key "case_safety_factors", "cases"
  add_foreign_key "case_safety_factors", "safety_factors"
  add_foreign_key "cases", "users"
end
