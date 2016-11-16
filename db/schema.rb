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

ActiveRecord::Schema.define(version: 20161116042453) do

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

  create_table "ethnicities", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "experiments", force: :cascade do |t|
    t.integer  "blood_type_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["blood_type_id"], name: "index_experiments_on_blood_type_id"
  end

  create_table "genders", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "marital_statuses", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "medical_conditions", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.index ["allergy_id"], name: "index_patient_profiles_on_allergy_id"
    t.index ["blood_type_id"], name: "index_patient_profiles_on_blood_type_id"
    t.index ["ethnicity_id"], name: "index_patient_profiles_on_ethnicity_id"
    t.index ["gender_id"], name: "index_patient_profiles_on_gender_id"
    t.index ["marital_status_id"], name: "index_patient_profiles_on_marital_status_id"
    t.index ["region_id"], name: "index_patient_profiles_on_region_id"
    t.index ["user_id"], name: "index_patient_profiles_on_user_id"
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
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
