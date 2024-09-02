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

ActiveRecord::Schema.define(version: 2024_09_02_105816) do

  create_table "attendance_setups", force: :cascade do |t|
    t.boolean "roaster"
    t.integer "branch_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["branch_id"], name: "index_attendance_setups_on_branch_id"
  end

  create_table "branches", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.integer "company_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["company_id"], name: "index_branches_on_company_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "employee_rooms", force: :cascade do |t|
    t.integer "employee_id", null: false
    t.integer "room_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["employee_id"], name: "index_employee_rooms_on_employee_id"
    t.index ["room_id"], name: "index_employee_rooms_on_room_id"
  end

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.date "hire_date"
    t.string "employment_number"
    t.integer "branch_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["branch_id"], name: "index_employees_on_branch_id"
  end

  create_table "financial_packages", force: :cascade do |t|
    t.date "from_date"
    t.date "to_date"
    t.decimal "amount"
    t.integer "employee_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["employee_id"], name: "index_financial_packages_on_employee_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.string "name"
    t.integer "branch_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["branch_id"], name: "index_rooms_on_branch_id"
  end

  create_table "terminations", force: :cascade do |t|
    t.date "date"
    t.integer "employee_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["employee_id"], name: "index_terminations_on_employee_id"
  end

  add_foreign_key "attendance_setups", "branches"
  add_foreign_key "branches", "companies"
  add_foreign_key "employee_rooms", "employees"
  add_foreign_key "employee_rooms", "rooms"
  add_foreign_key "employees", "branches"
  add_foreign_key "financial_packages", "employees"
  add_foreign_key "rooms", "branches"
  add_foreign_key "terminations", "employees"
end
