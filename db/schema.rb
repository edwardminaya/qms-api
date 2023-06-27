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

ActiveRecord::Schema[7.0].define(version: 2023_06_27_210608) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "departments", force: :cascade do |t|
    t.string "department_name"
    t.string "department_manager"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "productclasses", force: :cascade do |t|
    t.string "product_class_name"
    t.string "product_class_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "product_name"
    t.string "product_code"
    t.string "product_description"
    t.integer "productclass_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rootcauses", force: :cascade do |t|
    t.integer "product_id"
    t.string "issue_description"
    t.string "severity"
    t.integer "department_id"
    t.string "root_cause_analysis"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
