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

ActiveRecord::Schema[7.0].define(version: 2022_04_01_072534) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "jobs", force: :cascade do |t|
    t.string "title"
    t.integer "salary"
    t.string "company"
    t.string "avatar"
    t.decimal "rating"
    t.text "activity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "is_salary", default: false
    t.string "currency"
    t.string "level"
    t.string "skills"
  end

  create_table "resumes", force: :cascade do |t|
    t.string "name"
    t.text "level"
    t.string "avatar"
    t.boolean "is_search_job"
    t.text "tags"
    t.integer "experience"
    t.string "city"
    t.string "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
