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

ActiveRecord::Schema.define(version: 20180521012631) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "conversations", force: :cascade do |t|
    t.integer "sender_id"
    t.integer "helper_id"
    t.text "comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "transaction_records", force: :cascade do |t|
    t.integer "provider_id"
    t.integer "reciver_id"
    t.integer "credit"
    t.integer "review"
    t.text "comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.text "name"
    t.text "email"
    t.integer "credit"
    t.string "password_digest"
    t.string "address"
    t.text "skill"
    t.string "image"
    t.float "longitude"
    t.float "latitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
