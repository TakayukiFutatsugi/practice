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

ActiveRecord::Schema.define(version: 2021_04_05_004704) do

  create_table "clients", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name"
    t.text "homepage"
    t.string "industry"
    t.string "business"
    t.integer "staff"
    t.string "address"
    t.text "introduction"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_clients_on_email", unique: true
    t.index ["reset_password_token"], name: "index_clients_on_reset_password_token", unique: true
  end

  create_table "entries", force: :cascade do |t|
    t.integer "job_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["job_id"], name: "index_entries_on_job_id"
    t.index ["user_id"], name: "index_entries_on_user_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.integer "client_id", null: false
    t.string "title"
    t.integer "status"
    t.integer "monthlyOrAnnual"
    t.integer "salary"
    t.string "benefitProgram"
    t.string "holiday"
    t.integer "language"
    t.integer "framework"
    t.string "characteristics"
    t.string "skillset"
    t.string "selectionProcess"
    t.string "training"
    t.date "startingDate"
    t.integer "workplace"
    t.string "access"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["client_id"], name: "index_jobs_on_client_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "familyName"
    t.string "lastName"
    t.string "familyNameDetail"
    t.string "lastNameDetail"
    t.integer "gender"
    t.date "birthdate"
    t.integer "prefecture"
    t.date "firstEducation"
    t.string "firstEducationDetail"
    t.date "secondEducation"
    t.string "secondEducationDetail"
    t.date "thirdEducation"
    t.string "thirdEducationDetail"
    t.date "firstCareer"
    t.string "firstCareerDetail"
    t.date "secondCareer"
    t.string "secondCareerDetail"
    t.date "thirdCareer"
    t.string "thirdCareerDetail"
    t.string "certification"
    t.string "reason"
    t.integer "duration"
    t.string "strongPoint"
    t.string "weakPoint"
    t.string "goal"
    t.text "learningResource"
    t.text "informationResource"
    t.integer "language"
    t.integer "framework"
    t.text "portfolio"
    t.string "product"
    t.text "introduction"
    t.integer "workplace"
    t.integer "monthlyOrAnnual"
    t.integer "salary"
    t.date "startingDate"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "entries", "jobs"
  add_foreign_key "entries", "users"
  add_foreign_key "jobs", "clients"
end
