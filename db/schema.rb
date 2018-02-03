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

ActiveRecord::Schema.define(version: 20180203132222) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "formulations", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "formulations_ingredients", force: :cascade do |t|
    t.integer "formulation_id", null: false
    t.integer "ingredient_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "percentage", null: false
    t.index ["formulation_id", "ingredient_id"], name: "index_formulations_ingredients_on_both_keys", unique: true
  end

  create_table "ingredients", force: :cascade do |t|
    t.string "name", null: false
    t.float "minimum_percentage", null: false
    t.float "maximum_percentage", null: false
    t.text "description"
    t.jsonb "classes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ingredients_prescriptions", force: :cascade do |t|
    t.integer "prescription_id", null: false
    t.integer "ingredient_id", null: false
    t.float "percentage", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["prescription_id", "ingredient_id"], name: "index_prescriptions_ingredients_on_both_keys", unique: true
  end

  create_table "prescriptions", force: :cascade do |t|
    t.string "patient_name", null: false
    t.string "patient_address", null: false
    t.date "patient_birth_date", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "formulation_id"
  end

end
