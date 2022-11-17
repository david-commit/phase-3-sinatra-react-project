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

ActiveRecord::Schema.define(version: 2022_11_10_111438) do

  create_table "appointments", force: :cascade do |t|
    t.integer "user_id"
    t.string "workout"
    t.string "date"
    t.string "duration"
    t.integer "trainer_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "feedbacks", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone"
    t.string "message"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "user_id"
    t.string "review"
    t.integer "rating"
  end

  create_table "trainers", force: :cascade do |t|
    t.string "name"
    t.string "job_title"
    t.string "facebook"
    t.string "twitter"
    t.string "linkedin"
    t.string "pintrest"
    t.string "image"
    t.string "description"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password"
    t.string "confirm_password"
    t.integer "trainer_id"
  end

end
