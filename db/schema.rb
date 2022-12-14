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

ActiveRecord::Schema[7.0].define(version: 2022_10_24_185126) do
  create_table "bookings", force: :cascade do |t|
    t.date "fecha"
    t.time "time"
    t.integer "lesson_id", null: false
    t.integer "user_id", null: false
    t.integer "pterm_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lesson_id"], name: "index_bookings_on_lesson_id"
    t.index ["pterm_id"], name: "index_bookings_on_pterm_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "lessons", force: :cascade do |t|
    t.string "curso"
    t.integer "mode_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mode_id"], name: "index_lessons_on_mode_id"
    t.index ["user_id"], name: "index_lessons_on_user_id"
  end

  create_table "modes", force: :cascade do |t|
    t.string "mode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pterms", force: :cascade do |t|
    t.string "pterm"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schedules", force: :cascade do |t|
    t.date "fecha"
    t.time "hora"
    t.integer "status"
    t.integer "lesson_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lesson_id"], name: "index_schedules_on_lesson_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.string "nombre"
    t.string "apellido"
    t.string "direccion"
    t.string "localidad"
    t.string "provincia"
    t.string "pais"
    t.integer "dni"
    t.boolean "admin"
    t.string "tipo"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bookings", "lessons"
  add_foreign_key "bookings", "pterms"
  add_foreign_key "bookings", "users"
  add_foreign_key "lessons", "modes"
  add_foreign_key "lessons", "users"
  add_foreign_key "schedules", "lessons"
end
