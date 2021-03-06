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

ActiveRecord::Schema.define(version: 2020_02_09_014126) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.datetime "date"
    t.integer "duration"
    t.float "price"
    t.bigint "mentee_id"
    t.bigint "mentor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "rating"
    t.text "review"
    t.index ["mentee_id"], name: "index_bookings_on_mentee_id"
    t.index ["mentor_id"], name: "index_bookings_on_mentor_id"
  end

  create_table "mentees", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "contact_method"
    t.string "contact_detail"
    t.string "interest_field"
    t.integer "experience_years"
    t.text "description"
    t.string "location"
    t.string "linkedin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "photo"
  end

  create_table "mentors", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "contact_method"
    t.string "contact_detail"
    t.string "title"
    t.string "company"
    t.string "field"
    t.text "description"
    t.string "location"
    t.string "linkedin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "photo"
    t.float "avg_rating"
    t.text "skills", default: [], array: true
  end

  add_foreign_key "bookings", "mentees"
  add_foreign_key "bookings", "mentors"
end
