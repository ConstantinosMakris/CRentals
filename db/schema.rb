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

ActiveRecord::Schema.define(version: 2019_12_13_192149) do

  create_table "Rentals", force: :cascade do |t|
    t.integer "user_id"
    t.integer "car_id"
    t.datetime "start"
    t.datetime "end"
    t.string "address"
    t.text "comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["car_id"], name: "index_rentals_on_car_id"
    t.index ["user_id"], name: "index_rentals_on_user_id"
  end

  create_table "cars", force: :cascade do |t|
    t.string "model", null: false
    t.decimal "engine", null: false
    t.integer "seats", null: false
    t.string "transmission", null: false
    t.boolean "ac"
    t.decimal "priceDay", null: false
    t.decimal "priceWeek", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["model"], name: "index_Cars_on_model", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.string "first_name"
    t.string "last_name"
    t.integer "age", default: 0
    t.string "telephone"
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
