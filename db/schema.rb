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

ActiveRecord::Schema.define(version: 2019_04_28_162817) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "channels", force: :cascade do |t|
    t.bigint "hunter_id", null: false
    t.string "channel_name", null: false
    t.string "url", null: false
    t.decimal "score", default: "0.0"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.index ["channel_name", "username"], name: "index_channels_on_channel_name_and_username"
    t.index ["channel_name"], name: "index_channels_on_channel_name"
    t.index ["hunter_id"], name: "index_channels_on_hunter_id"
  end

  create_table "hunters", force: :cascade do |t|
    t.string "email", null: false
    t.string "name", null: false
    t.string "country_code", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_hunters_on_email", unique: true
  end

  create_table "makers", force: :cascade do |t|
    t.string "email", null: false
    t.string "company_name", null: false
    t.string "name", null: false
    t.string "position", null: false
    t.string "business_category", null: false
    t.decimal "monthly_budget", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_makers_on_email", unique: true
  end

end
