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

ActiveRecord::Schema.define(version: 2020_03_27_204120) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "groups", force: :cascade do |t|
    t.bigint "home_id", null: false
    t.bigint "person_id", null: false
    t.boolean "enabled"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["home_id"], name: "index_groups_on_home_id"
    t.index ["person_id"], name: "index_groups_on_person_id"
  end

  create_table "homes", force: :cascade do |t|
    t.string "name"
    t.string "link"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "photo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.string "title"
    t.boolean "daily"
    t.time "hour"
    t.bigint "home_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["home_id"], name: "index_tasks_on_home_id"
  end

  create_table "todos", force: :cascade do |t|
    t.bigint "task_id", null: false
    t.bigint "person_id", null: false
    t.boolean "done"
    t.datetime "when"
    t.datetime "due"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["person_id"], name: "index_todos_on_person_id"
    t.index ["task_id"], name: "index_todos_on_task_id"
  end

  add_foreign_key "groups", "homes"
  add_foreign_key "groups", "people"
  add_foreign_key "tasks", "homes"
  add_foreign_key "todos", "people"
  add_foreign_key "todos", "tasks"
end
