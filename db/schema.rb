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

ActiveRecord::Schema.define(version: 20200911154008) do

  create_table "claims", force: :cascade do |t|
    t.string   "owner_name"
    t.string   "property_id"
    t.string   "property_type"
    t.string   "year_reported"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.integer  "user_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "amount"
  end

  add_index "claims", ["user_id"], name: "index_claims_on_user_id"

  create_table "messages", force: :cascade do |t|
    t.string   "name"
    t.string   "company"
    t.string   "title"
    t.string   "email"
    t.string   "phone"
    t.text     "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "company"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.integer  "zip"
    t.string   "title"
    t.string   "email"
    t.string   "password_digest"
    t.string   "subsidiaries"
    t.text     "POB"
    t.integer  "phone"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
