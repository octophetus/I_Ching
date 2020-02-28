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

ActiveRecord::Schema.define(version: 2020_02_28_032134) do

  create_table "hexagrams", force: :cascade do |t|
    t.integer "number"
    t.string "name"
    t.string "nicknames"
    t.string "above"
    t.string "below"
    t.text "general"
    t.text "judgment"
    t.text "image"
    t.text "commentary"
    t.integer "line1"
    t.integer "line2"
    t.integer "line3"
    t.integer "line4"
    t.integer "line5"
    t.integer "line6"
  end

  create_table "lines", force: :cascade do |t|
    t.integer "places"
    t.integer "hexagram_id"
    t.text "meaning"
    t.index ["hexagram_id"], name: "index_lines_on_hexagram_id"
  end

  create_table "readings", force: :cascade do |t|
    t.string "question"
    t.text "notes"
    t.integer "first_place"
    t.integer "second_place"
    t.integer "third_place"
    t.integer "fourth_place"
    t.integer "fifth_place"
    t.integer "sixth_place"
    t.integer "user_id"
    t.index ["user_id"], name: "index_readings_on_user_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "tagname"
    t.integer "reading_id"
    t.index ["reading_id"], name: "index_tags_on_reading_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
