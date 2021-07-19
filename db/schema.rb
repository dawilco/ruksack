# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_07_19_013419) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string "line_1"
    t.string "line_2"
    t.string "city"
    t.integer "zip"
    t.string "state"
    t.string "addressable_type"
    t.bigint "addressable_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["addressable_type", "addressable_id"], name: "index_addresses_on_addressable"
  end

  create_table "campsites", force: :cascade do |t|
    t.string "name"
    t.integer "capacity"
    t.bigint "facility_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["facility_id"], name: "index_campsites_on_facility_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "title"
    t.datetime "start_datetime"
    t.datetime "end_datetime"
    t.boolean "published"
    t.bigint "facility_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "url"
    t.text "description"
    t.string "payment_types", default: [], array: true
    t.index ["facility_id"], name: "index_events_on_facility_id"
  end

  create_table "facilities", force: :cascade do |t|
    t.string "name"
    t.string "type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "organizations", force: :cascade do |t|
    t.string "name"
    t.string "stripe_account_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "participant_pricing_schedules", force: :cascade do |t|
    t.string "title"
    t.datetime "start_datetime"
    t.datetime "end_datetime"
    t.decimal "price", precision: 8, scale: 2
    t.bigint "participant_type_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["participant_type_id"], name: "index_participant_pricing_schedules_on_participant_type_id"
  end

  create_table "participant_types", force: :cascade do |t|
    t.string "name"
    t.integer "max_participants_registration"
    t.integer "min_participants_registration"
    t.integer "max_participants_session"
    t.bigint "event_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["event_id"], name: "index_participant_types_on_event_id"
  end

  create_table "participants", force: :cascade do |t|
    t.string "type"
    t.string "first_name"
    t.string "last_name"
    t.date "date_of_birth"
    t.bigint "unit_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["unit_id"], name: "index_participants_on_unit_id"
  end

  create_table "premises", force: :cascade do |t|
    t.string "name"
    t.string "type"
    t.bigint "facility_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["facility_id"], name: "index_premises_on_facility_id"
  end

  create_table "registrations", force: :cascade do |t|
    t.decimal "amount_paid", precision: 8, scale: 2
    t.bigint "session_id"
    t.bigint "participant_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["participant_id"], name: "index_registrations_on_participant_id"
    t.index ["session_id"], name: "index_registrations_on_session_id"
  end

  create_table "sessions", force: :cascade do |t|
    t.string "name"
    t.datetime "start_datetime"
    t.datetime "end_datetime"
    t.datetime "registration_open_datetime"
    t.datetime "registration_close_datetime"
    t.bigint "event_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["event_id"], name: "index_sessions_on_event_id"
  end

  create_table "units", force: :cascade do |t|
    t.integer "number"
    t.string "type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "campsites", "facilities"
  add_foreign_key "events", "facilities"
  add_foreign_key "participant_pricing_schedules", "participant_types"
  add_foreign_key "participant_types", "events"
  add_foreign_key "participants", "units"
  add_foreign_key "premises", "facilities"
  add_foreign_key "sessions", "events"
end
