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

ActiveRecord::Schema.define(version: 2020_12_04_204859) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "coach_comments", force: :cascade do |t|
    t.string "text"
    t.bigint "coach_id", null: false
    t.bigint "user_active_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["coach_id"], name: "index_coach_comments_on_coach_id"
    t.index ["user_active_id"], name: "index_coach_comments_on_user_active_id"
  end

  create_table "days", force: :cascade do |t|
    t.string "name", null: false
    t.bigint "workout_id", null: false
    t.index ["workout_id"], name: "index_days_on_workout_id"
  end

  create_table "exercises", force: :cascade do |t|
    t.string "name", null: false
    t.string "sets", null: false
    t.string "repetitions", null: false
    t.string "rest", null: false
    t.bigint "day_id", null: false
    t.index ["day_id"], name: "index_exercises_on_day_id"
  end

  create_table "followed_users", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "followed_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["followed_id"], name: "index_followed_users_on_followed_id"
    t.index ["user_id"], name: "index_followed_users_on_user_id"
  end

  create_table "saved_workouts", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "workout_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_saved_workouts_on_user_id"
    t.index ["workout_id"], name: "index_saved_workouts_on_workout_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "cpf"
    t.date "birth_date"
    t.string "phone"
    t.string "gender"
    t.string "category"
    t.string "password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_digest"
    t.integer "saved_workouts_count"
    t.boolean "private", default: false, null: false
  end

  create_table "workout_comments", force: :cascade do |t|
    t.string "text"
    t.bigint "workout_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_workout_comments_on_user_id"
    t.index ["workout_id"], name: "index_workout_comments_on_workout_id"
  end

  create_table "workouts", force: :cascade do |t|
    t.string "name", null: false
    t.string "coach", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "description"
    t.integer "saved_workouts_count"
  end

  add_foreign_key "coach_comments", "users", column: "coach_id"
  add_foreign_key "coach_comments", "users", column: "user_active_id"
  add_foreign_key "days", "workouts"
  add_foreign_key "exercises", "days"
  add_foreign_key "saved_workouts", "users"
  add_foreign_key "saved_workouts", "workouts"
  add_foreign_key "workout_comments", "users"
  add_foreign_key "workout_comments", "workouts"
end
