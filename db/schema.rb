# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_07_22_123127) do

  create_table "appointments", force: :cascade do |t|
    t.string "time"
    t.integer "Doctor_id", null: false
    t.integer "Patient_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["Doctor_id"], name: "index_appointments_on_Doctor_id"
    t.index ["Patient_id"], name: "index_appointments_on_Patient_id"
  end

  create_table "clocks", force: :cascade do |t|
    t.string "time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "Doctor_id", null: false
    t.integer "Patient_id", null: false
    t.integer "Appointment_id", null: false
    t.index ["Appointment_id"], name: "index_clocks_on_Appointment_id"
    t.index ["Doctor_id"], name: "index_clocks_on_Doctor_id"
    t.index ["Patient_id"], name: "index_clocks_on_Patient_id"
  end

  create_table "doctors", force: :cascade do |t|
    t.string "name"
    t.string "available_time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "medicines", force: :cascade do |t|
    t.string "mfg_date"
    t.string "exp_date"
    t.integer "Patient_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "Doctor_id", null: false
    t.string "Medicine"
    t.index ["Doctor_id"], name: "index_medicines_on_Doctor_id"
    t.index ["Patient_id"], name: "index_medicines_on_Patient_id"
  end

  create_table "patients", force: :cascade do |t|
    t.string "name"
    t.string "disease"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "Doctor_id", null: false
    t.index ["Doctor_id"], name: "index_patients_on_Doctor_id"
  end

  add_foreign_key "appointments", "Doctors"
  add_foreign_key "appointments", "Patients"
  add_foreign_key "clocks", "Appointments"
  add_foreign_key "clocks", "Doctors"
  add_foreign_key "clocks", "Patients"
  add_foreign_key "medicines", "Doctors"
  add_foreign_key "medicines", "Patients"
  add_foreign_key "patients", "Doctors"
end
