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

ActiveRecord::Schema.define(version: 20151023171921) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string   "name",                   null: false
    t.string   "registry_number",        null: false
    t.string   "state_registration"
    t.string   "municipal_registration"
    t.boolean  "active"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "companies_services", force: :cascade do |t|
    t.integer  "company_id"
    t.integer  "service_id"
    t.date     "expected_send_date"
    t.datetime "send_at"
    t.integer  "user_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "companies_services", ["company_id"], name: "index_companies_services_on_company_id", using: :btree
  add_index "companies_services", ["service_id"], name: "index_companies_services_on_service_id", using: :btree
  add_index "companies_services", ["user_id"], name: "index_companies_services_on_user_id", using: :btree

  create_table "contacts", force: :cascade do |t|
    t.integer  "company_id"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "contacts", ["company_id"], name: "index_contacts_on_company_id", using: :btree

  create_table "memberships", force: :cascade do |t|
    t.integer  "company_id"
    t.float    "amount"
    t.float    "amount_paid"
    t.datetime "paid_at"
    t.date     "expires_on"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "memberships", ["company_id"], name: "index_memberships_on_company_id", using: :btree

  create_table "phones", force: :cascade do |t|
    t.integer  "company_id"
    t.string   "ddd",        null: false
    t.string   "number",     null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "phones", ["company_id"], name: "index_phones_on_company_id", using: :btree

  create_table "services", force: :cascade do |t|
    t.string   "name",           null: false
    t.integer  "expected_day"
    t.integer  "expected_month"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",                   default: "", null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "companies_services", "companies"
  add_foreign_key "companies_services", "services"
  add_foreign_key "companies_services", "users"
  add_foreign_key "contacts", "companies"
  add_foreign_key "memberships", "companies"
  add_foreign_key "phones", "companies"
end
