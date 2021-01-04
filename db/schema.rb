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

ActiveRecord::Schema.define(version: 2018_06_10_161305) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alerts", force: :cascade do |t|
    t.string "coin_name"
    t.float "price_above"
    t.float "price_below"
    t.bigint "user_id"
    t.index ["user_id"], name: "index_alerts_on_user_id"
  end

  create_table "apis", force: :cascade do |t|
    t.string "publishable_key"
    t.string "secret_key"
    t.bigint "user_id"
    t.bigint "exchange_id"
    t.index ["exchange_id"], name: "index_apis_on_exchange_id"
    t.index ["user_id"], name: "index_apis_on_user_id"
  end

  create_table "exchanges", forc