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

ActiveRecord::Schema.define(version: 20161122034823) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "allergies", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "blood_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "condition_specialties", force: :cascade do |t|
    t.integer "medical_conditions_id"
    t.integer "specialties_id"
    t.index ["medical_conditions_id"], name: "index_condition_specialties_on_medical_conditions_id", using: :btree
    t.index ["specialties_id"], name: "index_condition_specialties_on_specialties_id", using: :btree
  end

  create_table "ethnicities", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "experiments", force: :cascade do |t|
    t.integer  "blood_type_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["blood_type_id"], name: "index_experiments_on_blood_type_id", using: :btree
  end

  create_table "genders", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "listings", force: :cascade do |t|
    t.integer  "patient_id"
    t.integer  "medical_condition_id"
    t.string   "comments"
    t.string   "photo_medical_data"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.index ["medical_condition_id"], name: "index_listings_on_medical_condition_id", using: :btree
    t.index ["patient_id"], name: "index_listings_on_patient_id", using: :btree
  end

  create_table "marital_statuses", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "medcondition_specialty_relationships", force: :cascade do |t|
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "specialty_id"
    t.integer  "condition_id"
  end

  create_table "medical_condition_specialties", force: :cascade do |t|
  end

  create_table "medical_conditions", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "medical_conditions_specialties", force: :cascade do |t|
    t.integer "medical_condition_id"
    t.integer "specialty_id"
    t.index ["medical_condition_id"], name: "index_medical_conditions_specialties_on_medical_condition_id", using: :btree
    t.index ["specialty_id"], name: "index_medical_conditions_specialties_on_specialty_id", using: :btree
  end

  create_table "patient_profiles", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "gender_id"
    t.string   "date_of_birth"
    t.integer  "region_id"
    t.integer  "ethnicity_id"
    t.integer  "blood_type_id"
    t.integer  "marital_status_id"
    t.integer  "allergy_id"
    t.integer  "height"
    t.integer  "weight"
    t.integer  "contact_number"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "photo"
    t.index ["allergy_id"], name: "index_patient_profiles_on_allergy_id", using: :btree
    t.index ["blood_type_id"], name: "index_patient_profiles_on_blood_type_id", using: :btree
    t.index ["ethnicity_id"], name: "index_patient_profiles_on_ethnicity_id", using: :btree
    t.index ["gender_id"], name: "index_patient_profiles_on_gender_id", using: :btree
    t.index ["marital_status_id"], name: "index_patient_profiles_on_marital_status_id", using: :btree
    t.index ["region_id"], name: "index_patient_profiles_on_region_id", using: :btree
    t.index ["user_id"], name: "index_patient_profiles_on_user_id", using: :btree
  end

  create_table "practitioner_profiles", force: :cascade do |t|
    t.integer  "gender_id"
    t.integer  "region_id"
    t.integer  "user_id"
    t.string   "registration_number"
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "specialty_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["gender_id"], name: "index_practitioner_profiles_on_gender_id", using: :btree
    t.index ["region_id"], name: "index_practitioner_profiles_on_region_id", using: :btree
    t.index ["specialty_id"], name: "index_practitioner_profiles_on_specialty_id", using: :btree
    t.index ["user_id"], name: "index_practitioner_profiles_on_user_id", using: :btree
  end

  create_table "quotes", force: :cascade do |t|
    t.integer  "practitioner_id"
    t.integer  "listing_id"
    t.integer  "quote_cost"
    t.string   "comments"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "payment_status"
    t.index ["listing_id"], name: "index_quotes_on_listing_id", using: :btree
    t.index ["practitioner_id"], name: "index_quotes_on_practitioner_id", using: :btree
  end

  create_table "regions", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "specialties", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "transactions", force: :cascade do |t|
    t.integer  "listing_id"
    t.string   "review_title"
    t.string   "review_content"
    t.integer  "rating"
    t.integer  "amount"
    t.string   "stripe_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["listing_id"], name: "index_transactions_on_listing_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "role"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "valid_roles", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "experiments", "blood_types"
  add_foreign_key "listings", "medical_conditions"
  add_foreign_key "listings", "users", column: "patient_id"
  add_foreign_key "patient_profiles", "allergies"
  add_foreign_key "patient_profiles", "blood_types"
  add_foreign_key "patient_profiles", "ethnicities"
  add_foreign_key "patient_profiles", "genders"
  add_foreign_key "patient_profiles", "marital_statuses"
  add_foreign_key "patient_profiles", "regions"
  add_foreign_key "patient_profiles", "users"
  add_foreign_key "practitioner_profiles", "genders"
  add_foreign_key "practitioner_profiles", "regions"
  add_foreign_key "practitioner_profiles", "specialties"
  add_foreign_key "practitioner_profiles", "users"
  add_foreign_key "quotes", "listings"
  add_foreign_key "quotes", "users", column: "practitioner_id"
  add_foreign_key "transactions", "listings"
end
