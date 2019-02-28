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

ActiveRecord::Schema.define(version: 2019_02_27_055511) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "field_offices", force: :cascade do |t|
    t.string "state"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "n400_forms", force: :cascade do |t|
    t.integer "eligibility"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "other_explain"
    t.integer "field_office_id"
    t.integer "nine_digit_a_number"
    t.string "legal_last_name"
    t.string "legal_first_name"
    t.string "legal_middle_name"
    t.string "resident_last_name"
    t.string "resident_first_name"
    t.string "resident_middle_name"
    t.integer "name_change"
    t.string "new_last_name"
    t.string "new_first_name"
    t.string "new_middle_name"
    t.integer "social_security_num"
    t.string "uscis_num"
    t.integer "gender"
    t.date "date_of_birth"
    t.date "date_of_residency"
    t.string "country_of_birth"
    t.string "country_of_citizendship"
    t.integer "physical_disability"
    t.integer "years_or_older_50"
    t.integer "years_or_older_55"
    t.integer "years_or_older_65"
    t.bigint "user_id"
    t.index ["user_id"], name: "index_n400_forms_on_user_id"
  end

  create_table "other_names", force: :cascade do |t|
    t.string "family_name"
    t.string "given_name"
    t.string "middle_name"
    t.bigint "n400_form_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["n400_form_id"], name: "index_other_names_on_n400_form_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "n400_forms", "users"
  add_foreign_key "other_names", "n400_forms"
end
